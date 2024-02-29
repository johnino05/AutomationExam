*** Variables ***
#Webelements

#Home Page WebelElements
${btn_cookie_close}  id:cookie-close
${btn_login}    css:div.mt-2 a
#Login Page WebElements
${txt_email}   id:login-email
${txt_password}    id:login-password
${btn_submit}   css:button.mt-md-2
#Submit Application Weblements
${btn_submit_new_application}   css:a.btn-primary
${lbl_continue_application}  css:div.page-main__content h1
${btn_continue_submit_new_application}   css:a.btn-outline-primary
#Fill out forms and Summary Weblements
${txt_first_name}   id:06c8a27e-7d11-57b2-9286-af8fc8ba5b27
${txt_last_name}   id:9d848df4-cdd0-50aa-820f-fdedcbda7e11
${txt_unit_num_street}   id:852ff964-97c2-5ea0-9674-49b3f95d2e86::17540589-1aa5-5bf7-93fa-d49acf58b711
${txt_postal_code}   name:48b06bb5-8a4f-504e-93a7-2c5e888da553::5911b832-9522-524a-9f3c-8014c2ddba1c
${drpdwn_postal_code}  css:ul.ui-menu > li.ui-menu-item:nth-child(1)
${drpdwn_country}   id:bf6f7c7f-1da5-55d7-99ac-2866e4a139fd
${btn_browse_files}  css:input[type="file"]
${file_to_upload}   test.png
${drpdwn_role}   id:field_cba99291-980c-5cb1-91c2-1db8d294587b
${iframe_career_obj}   css:iframe.cke_reset
${txt_career_obj}  css:body.cke_editable
${btn_next_screen}   css:button#navButtonNext
#Role dropdown list
${drpdwn_role_manual_tester}   id:be78a319-8d16-5788-9412-0e1e0cd80bee
#Summary Webelements
${summary_first_name}  css:div#container_06c8a27e-7d11-57b2-9286-af8fc8ba5b27 div.field
${summary_last_name}  css:div#container_9d848df4-cdd0-50aa-820f-fdedcbda7e11 div.field
${summary_house_num}  css:div#container_17540589-1aa5-5bf7-93fa-d49acf58b711 p
${summary_postal}  css:div#container_5911b832-9522-524a-9f3c-8014c2ddba1c p
${summary_country}  css:div#container_bf6f7c7f-1da5-55d7-99ac-2866e4a139fd p
${summary_photo}  css:div#container_396b40f4-2e98-5e88-8bb5-611227ddf7de a
${summary_gender}  css:div#container_64d3c1af-c688-597d-9803-77e4287f2fbb li
${summary_role}  css:div#container_cba99291-980c-5cb1-91c2-1db8d294587b p.answer
${summary_tools}  css:div#container_73c26bc3-c6fb-5224-b962-b417331ee64c li
${summary_career_obj}  css:div#container_c3a3b516-fbe1-5eb2-90e6-f90c21972e3a p.field
${btn_validate_and_send}  css:div.d-none button#submitButton
#Thank you for submitting your project page  Webelements
${txt_thank_you_msg}  css:h1.h1