program main
   use, intrinsic:: iso_fortran_env, only: error_unit, output_unit
   use, intrinsic:: iso_fortran_env, only: input_unit, output_unit, error_unit, int64, real64
   use, non_intrinsic:: comparable_lib, only: almost_equal
   use, non_intrinsic:: ad_lib
   use, non_intrinsic:: etas_lib, only: log_likelihood_etas, index_ge, index_le, index_lt, intensity_etas
   implicit none
   Integer(kind=int64), parameter:: one = 1
   Real(kind=real64), parameter:: ts(13) = [ &
      0d0, &
      0.0689465277779985d0, &
      0.171257407408622d0, &
      0.233481250002428d0, &
      0.328517476852845d0, &
      0.426012731481481d0, &
      0.529502777780096d0, &
      0.630255208335541d0, &
      0.727389699074405d0, &
      0.854635995372578d0, &
      0.996636689815808d0, &
      1.18308449074074d0, &
      1.39746527777778d0 &
      ]
   Real(kind=real64), parameter:: dms(13) = [ &
      0d0, &
      -4.1d0, &
      -4.5d0, &
      -5.4d0, &
      -6.1d0, &
      -5.7d0, &
      -5.8d0, &
      -7.4d0, &
      -6d0, &
      -2.5d0, &
      -5.2d0, &
      -6.9d0, &
      -6.9d0 &
      ]
   Real(kind=real64), parameter:: ts9(9) = [1, 2, 3, 4, 5, 6, 7, 8, 9]
   Real(kind=real64), parameter:: dms9(9) = [9, 8, 7, 6, 5, 4, 3, 2, 1]
   Real(kind=kind(ts)):: t_begin, t_end, normalize_interval, mu, K, c, alpha, p, m_fit_min
   type(Dual64_2_5):: d_c, d_p, d_alpha, d_K, d_mu, ll
   block ! intensity_etas
      type(Dual64_2_5):: mu, K, c, alpha, p, ret
      mu = Dual64_2_5(1, [1, 0, 0, 0, 0])
      K = Dual64_2_5(2, [0, 1, 0, 0, 0])
      c = Dual64_2_5(3, [0, 0, 1, 0, 0])
      alpha = Dual64_2_5(4, [0, 0, 0, 1, 0])
      p = Dual64_2_5(5, [0, 0, 0, 0, 1])
      ret = intensity_etas(3d0, 2d0, mu, K, c, alpha, p, ts9, dms9)
      if(.not.(almost_equal(real(ret), 1084496463522989.6d0)))then; write(error_unit, *) "ERROR: ", "etas_lib_test.f90", " ", 58, (".not.(almost_equal(real(ret), 1084496463522989.6d0))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
      if(.not.(all(almost_equal(grad(ret), [0.50000000000000000d0, 542248231761494.56d0, 433268362188298.88d0, 9703059223820180.0d0, -352541300610529.88d0]))))then; write(error_unit, *) "ERROR: ", "etas_lib_test.f90", " ", 59, (".not.(all(almost_equal(grad(ret), [0.50000000000000000d0, 542248231761494.56d0, 433268362188298.88d0, 9703059223820180.0d0, -352541300610529.88d0])))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
      if(.not.(all(almost_equal(hess(ret), reshape([0d0, 0d0, 0d0, 0d0, 0d0, 0d0, 0d0, 216634181094149.44d0, 4851529611910090.0d0, -176270650305264.94d0, 0d0, 216634181094149.44d0, -75307910105474.906d0, 3890072234842538.0d0, -31161379399679.172d0, 0d0, 4851529611910090.0d0, 3890072234842538.0d0, 86868261431287840.d0, -3166341867929631.0d0, 0d0, -176270650305264.94d0, -31161379399679.172d0, -3166341867929631.0d0, 97938757420072.125d0], [5, 5])))))then; write(error_unit, *) "ERROR: ", "etas_lib_test.f90", " ", 60, (".not.(all(almost_equal(hess(ret), reshape([0d0, 0d0, 0d0, 0d0, 0d0, 0d0, 0d0, 216634181094149.44d0, 4851529611910090.0d0, -176270650305264.94d0, 0d0, 216634181094149.44d0, -75307910105474.906d0, 3890072234842538.0d0, -31161379399679.172d0, 0d0, 4851529611910090.0d0, 3890072234842538.0d0, 86868261431287840.d0, -3166341867929631.0d0, 0d0, -176270650305264.94d0, -31161379399679.172d0, -3166341867929631.0d0, 97938757420072.125d0], [5, 5]))))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   end block
   block ! load_EtasInputs
      use, non_intrinsic:: etas_lib, only: EtasInputs64, load
      type(EtasInputs64):: etas_inputs
      Integer:: unit
      block ! n == n_actual
         block ! t_pre < t1
            block ! t2 < t_end
               open(newunit=unit, file='etas_inputs_111.in', status='old', action='read')
               call load(etas_inputs, unit)
               close(unit)
               if(.not.(almost_equal(etas_inputs%m_for_K, 6)))then; write(error_unit, *) "ERROR: ", "etas_lib_test.f90", " ", 75, (".not.(almost_equal(etas_inputs%m_for_K, 6))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
               if(.not.(almost_equal(etas_inputs%t_normalize_len, 1)))then; write(error_unit, *) "ERROR: ", "etas_lib_test.f90", " ", 76, (".not.(almost_equal(etas_inputs%t_normalize_len, 1))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
               if(.not.(almost_equal(etas_inputs%t_pre, -100)))then; write(error_unit, *) "ERROR: ", "etas_lib_test.f90", " ", 77, (".not.(almost_equal(etas_inputs%t_pre, -100))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
               if(.not.(almost_equal(etas_inputs%t_end, 100)))then; write(error_unit, *) "ERROR: ", "etas_lib_test.f90", " ", 78, (".not.(almost_equal(etas_inputs%t_end, 100))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
               if(.not.(almost_equal(etas_inputs%n, 10)))then; write(error_unit, *) "ERROR: ", "etas_lib_test.f90", " ", 79, (".not.(almost_equal(etas_inputs%n, 10))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
               if(.not.(all(almost_equal(etas_inputs%ts, [1, 3, 5, 7, 9, 11, 13, 15, 17, 19]))))then; write(error_unit, *) "ERROR: ", "etas_lib_test.f90", " ", 80, (".not.(all(almost_equal(etas_inputs%ts, [1, 3, 5, 7, 9, 11, 13, 15, 17, 19])))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
               if(.not.(all(almost_equal(etas_inputs%ms, [2, 4, 6, 8, 10, 12, 14, 16, 18, 20]))))then; write(error_unit, *) "ERROR: ", "etas_lib_test.f90", " ", 81, (".not.(all(almost_equal(etas_inputs%ms, [2, 4, 6, 8, 10, 12, 14, 16, 18, 20])))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
               close(unit)
            end block
         end block
      end block
      block ! n > n_actual
         block ! t_pre < t1
            block ! t2 < t_end
               open(newunit=unit, file='etas_inputs_211.in', status='old', action='read')
               call load(etas_inputs, unit)
               close(unit)
               if(.not.(almost_equal(etas_inputs%m_for_K, 6)))then; write(error_unit, *) "ERROR: ", "etas_lib_test.f90", " ", 93, (".not.(almost_equal(etas_inputs%m_for_K, 6))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
               if(.not.(almost_equal(etas_inputs%t_normalize_len, 1)))then; write(error_unit, *) "ERROR: ", "etas_lib_test.f90", " ", 94, (".not.(almost_equal(etas_inputs%t_normalize_len, 1))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
               if(.not.(almost_equal(etas_inputs%t_pre, -100)))then; write(error_unit, *) "ERROR: ", "etas_lib_test.f90", " ", 95, (".not.(almost_equal(etas_inputs%t_pre, -100))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
               if(.not.(almost_equal(etas_inputs%t_end, 100)))then; write(error_unit, *) "ERROR: ", "etas_lib_test.f90", " ", 96, (".not.(almost_equal(etas_inputs%t_end, 100))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
               if(.not.(almost_equal(etas_inputs%n, 10)))then; write(error_unit, *) "ERROR: ", "etas_lib_test.f90", " ", 97, (".not.(almost_equal(etas_inputs%n, 10))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
               if(.not.(all(almost_equal(etas_inputs%ts, [1, 3, 5, 7, 9, 11, 13, 15, 17, 19]))))then; write(error_unit, *) "ERROR: ", "etas_lib_test.f90", " ", 98, (".not.(all(almost_equal(etas_inputs%ts, [1, 3, 5, 7, 9, 11, 13, 15, 17, 19])))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
               if(.not.(all(almost_equal(etas_inputs%ms, [2, 4, 6, 8, 10, 12, 14, 16, 18, 20]))))then; write(error_unit, *) "ERROR: ", "etas_lib_test.f90", " ", 99, (".not.(all(almost_equal(etas_inputs%ms, [2, 4, 6, 8, 10, 12, 14, 16, 18, 20])))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
               close(unit)
            end block
         end block
      end block
      block ! n < n_actual
         block ! t_pre < t1
            block ! t2 < t_end
               open(newunit=unit, file='etas_inputs_311.in', status='old', action='read')
               call load(etas_inputs, unit)
               close(unit)
               if(.not.(almost_equal(etas_inputs%m_for_K, 6)))then; write(error_unit, *) "ERROR: ", "etas_lib_test.f90", " ", 111, (".not.(almost_equal(etas_inputs%m_for_K, 6))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
               if(.not.(almost_equal(etas_inputs%t_normalize_len, 1)))then; write(error_unit, *) "ERROR: ", "etas_lib_test.f90", " ", 112, (".not.(almost_equal(etas_inputs%t_normalize_len, 1))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
               if(.not.(almost_equal(etas_inputs%t_pre, -100)))then; write(error_unit, *) "ERROR: ", "etas_lib_test.f90", " ", 113, (".not.(almost_equal(etas_inputs%t_pre, -100))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
               if(.not.(almost_equal(etas_inputs%t_end, 100)))then; write(error_unit, *) "ERROR: ", "etas_lib_test.f90", " ", 114, (".not.(almost_equal(etas_inputs%t_end, 100))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
               if(.not.(almost_equal(etas_inputs%n, 5)))then; write(error_unit, *) "ERROR: ", "etas_lib_test.f90", " ", 115, (".not.(almost_equal(etas_inputs%n, 5))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
               if(.not.(all(almost_equal(etas_inputs%ts, [1, 3, 5, 7, 9]))))then; write(error_unit, *) "ERROR: ", "etas_lib_test.f90", " ", 116, (".not.(all(almost_equal(etas_inputs%ts, [1, 3, 5, 7, 9])))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
               if(.not.(all(almost_equal(etas_inputs%ms, [2, 4, 6, 8, 10]))))then; write(error_unit, *) "ERROR: ", "etas_lib_test.f90", " ", 117, (".not.(all(almost_equal(etas_inputs%ms, [2, 4, 6, 8, 10])))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
               close(unit)
            end block
         end block
      end block
   end block
   ! log_likelihood_etas_range
   d_mu = Dual64_2_5(1, [1, 0, 0, 0, 0])
   d_K = Dual64_2_5(2, [0, 1, 0, 0, 0])
   d_c = Dual64_2_5(3, [0, 0, 1, 0, 0])
   d_alpha = Dual64_2_5(4, [0, 0, 0, 1, 0])
   d_p = Dual64_2_5(2, [0, 0, 0, 0, 1])
   t_begin = 3.5d0
   t_end = 10
   m_fit_min = -1
   ll = log_likelihood_etas(t_begin, t_end, 1d0, d_mu, d_K, d_c, d_alpha, d_p, ts9, dms9, dms9 >= m_fit_min)
   if(.not.(almost_equal(real(ll), -10445626539012328.0d0, rtol=4*epsilon(ll))))then; write(error_unit, *) "ERROR: ", "etas_lib_test.f90", " ", 134, (".not.(almost_equal(real(ll), -10445626539012328.0d0, rtol=4*epsilon(ll)))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(all(almost_equal(grad(ll), [-6.4999999999999956d0, -5222813269506262.0d0, -3310865553565691.0d0, -93748459800658272.d0, 8408987664434670.0d0], rtol=4*epsilon(ll)))))then; write(error_unit, *) "ERROR: ", "etas_lib_test.f90", " ", 135, (".not.(all(almost_equal(grad(ll), [-6.4999999999999956d0, -5222813269506262.0d0, -3310865553565691.0d0, -93748459800658272.d0, 8408987664434670.0d0], rtol=4*epsilon(ll))))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(all(almost_equal(hess(ll), reshape([-3.4770300521364446d-030, -2.1284941990832770d-015, -1.5175164721806980d-015, -3.8211033970699237d-014, 4.0858129163152965d-015, -2.1284941990832770d-015, -1.4999999999999978d0, -1655432776782846.5d0, -46874229900329160.0d0, 4204493832217337.5d0, -1.5175164721806980d-015, -1655432776782846.5d0, 340818112649912.75d0, -29727941534711588.0d0, 1103266125861305.4d0, -3.8211033970699237d-014, -46874229900329160d0, -29727941534711588.0d0, -8.4165247574517811d+017, 75513243802721632.0d0, 4.0858129163152965d-015, 4204493832217337.5d0, 1103266125861305.4d0, 75513243802721632.0d0, -7222701336999888.0d0], [5, 5]), rtol=4*epsilon(ll)))))then; write(error_unit, *) "ERROR: ", "etas_lib_test.f90", " ", 136, (".not.(all(almost_equal(hess(ll), reshape([-3.4770300521364446d-030, -2.1284941990832770d-015, -1.5175164721806980d-015, -3.8211033970699237d-014, 4.0858129163152965d-015, -2.1284941990832770d-015, -1.4999999999999978d0, -1655432776782846.5d0, -46874229900329160.0d0, 4204493832217337.5d0, -1.5175164721806980d-015, -1655432776782846.5d0, 340818112649912.75d0, -29727941534711588.0d0, 1103266125861305.4d0, -3.8211033970699237d-014, -46874229900329160d0, -29727941534711588.0d0, -8.4165247574517811d+017, 75513243802721632.0d0, 4.0858129163152965d-015, 4204493832217337.5d0, 1103266125861305.4d0, 75513243802721632.0d0, -7222701336999888.0d0], [5, 5]), rtol=4*epsilon(ll))))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   t_end = 1.5d0
   normalize_interval = 1
   c = 1d0/24
   alpha = 1
   mu = 100
   d_mu = Dual64_2_5(mu, [1, 0, 0, 0, 0])
   d_c = Dual64_2_5(c, [0, 0, 1, 0, 0])
   d_alpha = Dual64_2_5(alpha, [0, 0, 0, 1, 0])
   p = 2d-1
   K = 104
   if(.not.(almost_equal(log_likelihood_etas(0d0, t_end, normalize_interval, mu, K, c, alpha, p, ts, dms, one, dms > -huge(0d0)), -238.82597918687705d0)))then; write(error_unit, *) "ERROR: ", "etas_lib_test.f90", " ", 150, (".not.(almost_equal(log_likelihood_etas(0d0, t_end, normalize_interval, mu, K, c, alpha, p, ts, dms, one, dms > -huge(0d0)), -238.82597918687705d0))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   d_p = Dual64_2_5(p, [0, 0, 0, 0, 1])
   d_k = Dual64_2_5(K, [0, 1, 0, 0, 0])
   if(.not.(almost_equal(real(log_likelihood_etas(0d0, t_end, normalize_interval, d_mu, d_K, d_c, d_alpha, d_p, ts, dms, one, dms > -huge(0d0))), -238.82597918687705d0)))then; write(error_unit, *) "ERROR: ", "etas_lib_test.f90", " ", 153, (".not.(almost_equal(real(log_likelihood_etas(0d0, t_end, normalize_interval, d_mu, d_K, d_c, d_alpha, d_p, ts, dms, one, dms > -huge(0d0))), -238.82597918687705d0))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   p = 6d-1
   K = 120
   if(.not.(almost_equal(log_likelihood_etas(0d0, t_end, normalize_interval, mu, K, c, alpha, p, ts, dms, one, dms > -huge(0d0)), -243.80278501664003d0)))then; write(error_unit, *) "ERROR: ", "etas_lib_test.f90", " ", 157, (".not.(almost_equal(log_likelihood_etas(0d0, t_end, normalize_interval, mu, K, c, alpha, p, ts, dms, one, dms > -huge(0d0)), -243.80278501664003d0))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   d_p = Dual64_2_5(p, [0, 0, 0, 0, 1])
   d_k = Dual64_2_5(K, [0, 1, 0, 0, 0])
   if(.not.(almost_equal(real(log_likelihood_etas(0d0, t_end, normalize_interval, d_mu, d_K, d_c, d_alpha, d_p, ts, dms, one, dms > -huge(0d0))), -243.80278501664003d0)))then; write(error_unit, *) "ERROR: ", "etas_lib_test.f90", " ", 160, (".not.(almost_equal(real(log_likelihood_etas(0d0, t_end, normalize_interval, d_mu, d_K, d_c, d_alpha, d_p, ts, dms, one, dms > -huge(0d0))), -243.80278501664003d0))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   p = 1
   K = 120
   if(.not.(almost_equal(log_likelihood_etas(0d0, t_end, normalize_interval, mu, K, c, alpha, p, ts, dms, one, dms > -huge(0d0)), -232.04236722101803d0)))then; write(error_unit, *) "ERROR: ", "etas_lib_test.f90", " ", 164, (".not.(almost_equal(log_likelihood_etas(0d0, t_end, normalize_interval, mu, K, c, alpha, p, ts, dms, one, dms > -huge(0d0)), -232.04236722101803d0))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   d_p = Dual64_2_5(p, [0, 0, 0, 0, 1])
   d_k = Dual64_2_5(K, [0, 1, 0, 0, 0])
   if(.not.(almost_equal(real(log_likelihood_etas(0d0, t_end, normalize_interval, d_mu, d_K, d_c, d_alpha, d_p, ts, dms, one, dms > -huge(0d0))), -232.04236722101803d0)))then; write(error_unit, *) "ERROR: ", "etas_lib_test.f90", " ", 167, (".not.(almost_equal(real(log_likelihood_etas(0d0, t_end, normalize_interval, d_mu, d_K, d_c, d_alpha, d_p, ts, dms, one, dms > -huge(0d0))), -232.04236722101803d0))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(all(almost_equal(grad(log_likelihood_etas(0d0, t_end, normalize_interval, d_mu, d_K, d_c, d_alpha, d_p, ts, dms, one, dms > -huge(0d0))), [-1.4229686278967888d0, -1.2014840427587559d0, -66.823472324117404d0, 50.443481642939808d0, 38.410272133423234d0], rtol=4*epsilon(0d0)))))then; write(error_unit, *) "ERROR: ", "etas_lib_test.f90", " ", 168, (".not.(all(almost_equal(grad(log_likelihood_etas(0d0, t_end, normalize_interval, d_mu, d_K, d_c, d_alpha, d_p, ts, dms, one, dms > -huge(0d0))), [-1.4229686278967888d0, -1.2014840427587559d0, -66.823472324117404d0, 50.443481642939808d0, 38.410272133423234d0], rtol=4*epsilon(0d0))))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   d_mu = Dual64_2_5(2, [1, 0, 0, 0, 0])
   d_K = Dual64_2_5(3, [0, 1, 0, 0, 0])
   d_c = Dual64_2_5(0.5d0, [0, 0, 1, 0, 0])
   d_alpha = Dual64_2_5(0.7d0, [0, 0, 0, 1, 0])
   d_p = Dual64_2_5(1.9d0, [0, 0, 0, 0, 1])
   ll = log_likelihood_etas(0d0, 10d0, 1d0, d_mu, d_K, d_c, d_alpha, d_p, ts9, dms9, one, dms >= -huge(dms))
   if(.not.(almost_equal(real(ll), -4718.4906031186783d0)))then; write(error_unit, *) "ERROR: ", "etas_lib_test.f90", " ", 177, (".not.(almost_equal(real(ll), -4718.4906031186783d0))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(all(almost_equal(grad(ll), [-9.4502322380780779d0, -1578.0254908246793d0, -2657.6088286574059d0, -38151.096903604506d0, 1923.6447314340776d0]))))then; write(error_unit, *) "ERROR: ", "etas_lib_test.f90", " ", 178, (".not.(all(almost_equal(grad(ll), [-9.4502322380780779d0, -1578.0254908246793d0, -2657.6088286574059d0, -38151.096903604506d0, 1923.6447314340776d0])))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(all(almost_equal(hess(ll), reshape([-0.25046692687214434d0, -1.6277969392544365d-002, -9.4984559178346792d-002, -0.35239506607542787d0, 7.9857073946228332d-002, -1.6277969392544365d-002, -0.86697740664454326d0, -890.44775158630671d0, -12736.886198288652d0, 644.67638700299858d0, -9.4984559178346792d-002, -890.44775158630671d0, 803.42987702916469d0, -21730.945774842661d0, 1914.4792540305175d0, -0.35239506607542787d0, -12736.886198288652d0, -21730.945774842661d0, -316002.80842898454d0, 15784.781109535386d0, 7.9857073946228332d-002, 644.67638700299858d0, 1914.4792540305175d0, 15784.781109535386d0, -2685.5278096335228d0], [5, 5]), rtol=8*epsilon(0d0)))))then; write(error_unit, *) "ERROR: ", "etas_lib_test.f90", " ", 179, (".not.(all(almost_equal(hess(ll), reshape([-0.25046692687214434d0, -1.6277969392544365d-002, -9.4984559178346792d-002, -0.35239506607542787d0, 7.9857073946228332d-002, -1.6277969392544365d-002, -0.86697740664454326d0, -890.44775158630671d0, -12736.886198288652d0, 644.67638700299858d0, -9.4984559178346792d-002, -890.44775158630671d0, 803.42987702916469d0, -21730.945774842661d0, 1914.4792540305175d0, -0.35239506607542787d0, -12736.886198288652d0, -21730.945774842661d0, -316002.80842898454d0, 15784.781109535386d0, 7.9857073946228332d-002, 644.67638700299858d0, 1914.4792540305175d0, 15784.781109535386d0, -2685.5278096335228d0], [5, 5]), rtol=8*epsilon(0d0))))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   d_mu = Dual64_2_5(2, [1, 0, 0, 0, 0])
   d_K = Dual64_2_5(3, [0, 1, 0, 0, 0])
   d_c = Dual64_2_5(0.5d0, [0, 0, 1, 0, 0])
   d_alpha = Dual64_2_5(0.7d0, [0, 0, 0, 1, 0])
   d_p = Dual64_2_5(1d0, [0, 0, 0, 0, 1])
   ll = log_likelihood_etas(0d0, 10d0, 1d0, d_mu, d_K, d_c, d_alpha, d_p, ts9, dms9, one, dms >= -huge(dms))
   if(.not.(almost_equal(real(ll), -8280.4999296034948d0, rtol=2*epsilon(0d0))))then; write(error_unit, *) "ERROR: ", "etas_lib_test.f90", " ", 188, (".not.(almost_equal(real(ll), -8280.4999296034948d0, rtol=2*epsilon(0d0)))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(all(almost_equal(grad(ll), [-9.4880555756507547d0, -2768.5778373173885d0, -4547.1701471924162d0, -67485.487711625668d0, 14418.343962566831d0], rtol=2*epsilon(0d0)))))then; write(error_unit, *) "ERROR: ", "etas_lib_test.f90", " ", 189, (".not.(all(almost_equal(grad(ll), [-9.4880555756507547d0, -2768.5778373173885d0, -4547.1701471924162d0, -67485.487711625668d0, 14418.343962566831d0], rtol=2*epsilon(0d0))))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(all(almost_equal(hess(ll), reshape([-0.25001995551297140d0, -3.9681711077676545d-003, -1.0882217609380055d-002, -9.4295609448583187d-002, 1.9973108900776308d-002, -3.9681711077676545d-003, -0.88358912496165576d0, -1518.0158667757653d0, -22516.493737885849d0, 4810.1358578446689d0, -1.0882217609380055d-002, -1518.0158667757653d0, 4094.3903842408840d0, -37394.249440679021d0, 3436.0249938717370d0, -9.4295609448583187d-002, -22516.493737885849d0, -37394.249440679021d0, -561496.92971349962d0, 119037.05581323231d0, 1.9973108900776308d-002, 4810.1358578446689d0, 3436.0249938717370d0, 119037.05581323231d0, -35314.597266915902d0], [5, 5]), rtol=2*epsilon(0d0)))))then; write(error_unit, *) "ERROR: ", "etas_lib_test.f90", " ", 190, (".not.(all(almost_equal(hess(ll), reshape([-0.25001995551297140d0, -3.9681711077676545d-003, -1.0882217609380055d-002, -9.4295609448583187d-002, 1.9973108900776308d-002, -3.9681711077676545d-003, -0.88358912496165576d0, -1518.0158667757653d0, -22516.493737885849d0, 4810.1358578446689d0, -1.0882217609380055d-002, -1518.0158667757653d0, 4094.3903842408840d0, -37394.249440679021d0, 3436.0249938717370d0, -9.4295609448583187d-002, -22516.493737885849d0, -37394.249440679021d0, -561496.92971349962d0, 119037.05581323231d0, 1.9973108900776308d-002, 4810.1358578446689d0, 3436.0249938717370d0, 119037.05581323231d0, -35314.597266915902d0], [5, 5]), rtol=2*epsilon(0d0))))"); error stop; end if; write(output_unit, '(a)', advance='no') '.'
   if(.not.(index_ge(ts, 0d0 - 0.01, int(1, kind=int64), size(ts, kind=int64)) == 1))then; write(error_unit, *) "ERROR: ", "etas_lib_test.f90", " ", 193, (".not.(index_ge(ts, 0d0 - 0.01, int(1, kind=int64), size(ts, kind=int64)) == 1)"); error stop; end if
   if(.not.(index_ge(ts, 0d0, int(1, kind=int64), size(ts, kind=int64)) == 1))then; write(error_unit, *) "ERROR: ", "etas_lib_test.f90", " ", 194, (".not.(index_ge(ts, 0d0, int(1, kind=int64), size(ts, kind=int64)) == 1)"); error stop; end if
   if(.not.(index_ge(ts, 0.0689465277779985d0 - 0.01, int(1, kind=int64), size(ts, kind=int64)) == 2))then; write(error_unit, *) "ERROR: ", "etas_lib_test.f90", " ", 195, (".not.(index_ge(ts, 0.0689465277779985d0 - 0.01, int(1, kind=int64), size(ts, kind=int64)) == 2)"); error stop; end if
   if(.not.(index_ge(ts, 0.0689465277779985d0, int(1, kind=int64), size(ts, kind=int64)) == 2))then; write(error_unit, *) "ERROR: ", "etas_lib_test.f90", " ", 196, (".not.(index_ge(ts, 0.0689465277779985d0, int(1, kind=int64), size(ts, kind=int64)) == 2)"); error stop; end if
   if(.not.(index_ge(ts, 1.39746527777778d0 - 0.01, int(1, kind=int64), size(ts, kind=int64)) == size(ts, kind=int64)))then; write(error_unit, *) "ERROR: ", "etas_lib_test.f90", " ", 197, (".not.(index_ge(ts, 1.39746527777778d0 - 0.01, int(1, kind=int64), size(ts, kind=int64)) == size(ts, kind=int64))"); error stop; end if
   if(.not.(index_ge(ts, 1.39746527777778d0, int(1, kind=int64), size(ts, kind=int64)) == size(ts, kind=int64)))then; write(error_unit, *) "ERROR: ", "etas_lib_test.f90", " ", 198, (".not.(index_ge(ts, 1.39746527777778d0, int(1, kind=int64), size(ts, kind=int64)) == size(ts, kind=int64))"); error stop; end if
   if(.not.(index_ge(ts, 1.39746527777778d0 + 0.01, int(1, kind=int64), size(ts, kind=int64)) == size(ts, kind=int64) + 1))then; write(error_unit, *) "ERROR: ", "etas_lib_test.f90", " ", 199, (".not.(index_ge(ts, 1.39746527777778d0 + 0.01, int(1, kind=int64), size(ts, kind=int64)) == size(ts, kind=int64) + 1)"); error stop; end if
   if(.not.(index_le(ts, 0d0 - 0.01, int(1, kind=int64), size(ts, kind=int64)) == 0))then; write(error_unit, *) "ERROR: ", "etas_lib_test.f90", " ", 201, (".not.(index_le(ts, 0d0 - 0.01, int(1, kind=int64), size(ts, kind=int64)) == 0)"); error stop; end if
   if(.not.(index_le(ts, 0d0, int(1, kind=int64), size(ts, kind=int64)) == 1))then; write(error_unit, *) "ERROR: ", "etas_lib_test.f90", " ", 202, (".not.(index_le(ts, 0d0, int(1, kind=int64), size(ts, kind=int64)) == 1)"); error stop; end if
   if(.not.(index_le(ts, 0.0689465277779985d0 - 0.01, int(1, kind=int64), size(ts, kind=int64)) == 1))then; write(error_unit, *) "ERROR: ", "etas_lib_test.f90", " ", 203, (".not.(index_le(ts, 0.0689465277779985d0 - 0.01, int(1, kind=int64), size(ts, kind=int64)) == 1)"); error stop; end if
   if(.not.(index_le(ts, 0.0689465277779985d0, int(1, kind=int64), size(ts, kind=int64)) == 2))then; write(error_unit, *) "ERROR: ", "etas_lib_test.f90", " ", 204, (".not.(index_le(ts, 0.0689465277779985d0, int(1, kind=int64), size(ts, kind=int64)) == 2)"); error stop; end if
   if(.not.(index_le(ts, 1.39746527777778d0 - 0.01, int(1, kind=int64), size(ts, kind=int64)) == size(ts, kind=int64) - 1))then; write(error_unit, *) "ERROR: ", "etas_lib_test.f90", " ", 205, (".not.(index_le(ts, 1.39746527777778d0 - 0.01, int(1, kind=int64), size(ts, kind=int64)) == size(ts, kind=int64) - 1)"); error stop; end if
   if(.not.(index_le(ts, 1.39746527777778d0, int(1, kind=int64), size(ts, kind=int64)) == size(ts, kind=int64)))then; write(error_unit, *) "ERROR: ", "etas_lib_test.f90", " ", 206, (".not.(index_le(ts, 1.39746527777778d0, int(1, kind=int64), size(ts, kind=int64)) == size(ts, kind=int64))"); error stop; end if
   if(.not.(index_le(ts, 1.39746527777778d0 + 0.01, int(1, kind=int64), size(ts, kind=int64)) == size(ts, kind=int64)))then; write(error_unit, *) "ERROR: ", "etas_lib_test.f90", " ", 207, (".not.(index_le(ts, 1.39746527777778d0 + 0.01, int(1, kind=int64), size(ts, kind=int64)) == size(ts, kind=int64))"); error stop; end if
   if(.not.(index_lt(ts, 0d0 - 0.01, int(1, kind=int64), size(ts, kind=int64)) == 0))then; write(error_unit, *) "ERROR: ", "etas_lib_test.f90", " ", 209, (".not.(index_lt(ts, 0d0 - 0.01, int(1, kind=int64), size(ts, kind=int64)) == 0)"); error stop; end if
   if(.not.(index_lt(ts, 0d0, int(1, kind=int64), size(ts, kind=int64)) == 0))then; write(error_unit, *) "ERROR: ", "etas_lib_test.f90", " ", 210, (".not.(index_lt(ts, 0d0, int(1, kind=int64), size(ts, kind=int64)) == 0)"); error stop; end if
   if(.not.(index_lt(ts, 0.0689465277779985d0 - 0.01, int(1, kind=int64), size(ts, kind=int64)) == 1))then; write(error_unit, *) "ERROR: ", "etas_lib_test.f90", " ", 211, (".not.(index_lt(ts, 0.0689465277779985d0 - 0.01, int(1, kind=int64), size(ts, kind=int64)) == 1)"); error stop; end if
   if(.not.(index_lt(ts, 0.0689465277779985d0, int(1, kind=int64), size(ts, kind=int64)) == 1))then; write(error_unit, *) "ERROR: ", "etas_lib_test.f90", " ", 212, (".not.(index_lt(ts, 0.0689465277779985d0, int(1, kind=int64), size(ts, kind=int64)) == 1)"); error stop; end if
   if(.not.(index_lt(ts, 1.39746527777778d0 - 0.01, int(1, kind=int64), size(ts, kind=int64)) == size(ts, kind=int64) - 1))then; write(error_unit, *) "ERROR: ", "etas_lib_test.f90", " ", 213, (".not.(index_lt(ts, 1.39746527777778d0 - 0.01, int(1, kind=int64), size(ts, kind=int64)) == size(ts, kind=int64) - 1)"); error stop; end if
   if(.not.(index_lt(ts, 1.39746527777778d0, int(1, kind=int64), size(ts, kind=int64)) == size(ts, kind=int64) - 1))then; write(error_unit, *) "ERROR: ", "etas_lib_test.f90", " ", 214, (".not.(index_lt(ts, 1.39746527777778d0, int(1, kind=int64), size(ts, kind=int64)) == size(ts, kind=int64) - 1)"); error stop; end if
   if(.not.(index_lt(ts, 1.39746527777778d0 + 0.01, int(1, kind=int64), size(ts, kind=int64)) == size(ts, kind=int64)))then; write(error_unit, *) "ERROR: ", "etas_lib_test.f90", " ", 215, (".not.(index_lt(ts, 1.39746527777778d0 + 0.01, int(1, kind=int64), size(ts, kind=int64)) == size(ts, kind=int64))"); error stop; end if
   stop
end program main
