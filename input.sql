UPDATE master.template
     SET "name"='E-mail de réussite de la demande d''historique d''authentification', descr='E-mail de réussite de la demande d''historique d''authentification', file_format_code='txt', model='velocity', file_txt='Bonjour $fullName_fra, Votre demande d''historique d''authentification a été traitée avec succès. Merci!', module_id='10006', module_name='Resident Services', template_typ_code='RS_AUTH_HIST_SUCCESS_EMAIL', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1163' AND lang_code='fra';
     UPDATE master.template
     SET "name"='Authentication History Request Success Email', descr='Authentication History Request Success Email', file_format_code='txt', model='velocity', file_txt='Hi $fullName_eng, Your Request for Authentication History has been processed successfully. Thank You!', module_id='10006', module_name='Resident Services', template_typ_code='RS_AUTH_HIST_SUCCESS_EMAIL', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1163' AND lang_code='eng';
     UPDATE master.template
     SET "name"='سجل المصادقة طلب البريد الإلكتروني بنجاح', descr='سجل المصادقة طلب البريد الإلكتروني بنجاح', file_format_code='txt', model='velocity', file_txt='مرحبًا $ fullName_eng ، تمت معالجة طلبك الخاص بسجل المصادقة بنجاح. شكرا لكم!', module_id='10006', module_name='خدمات المقيمين', template_typ_code='RS_AUTH_HIST_SUCCESS_EMAIL', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1163' AND lang_code='ara';
     UPDATE master.template
     SET "name"='Authentication History Request Success SMS', descr='Authentication History Request Success SMS', file_format_code='txt', model='velocity', file_txt='Hi $fullName_eng, Your Request for Authentication History has been processed successfully. Thank You!', module_id='10006', module_name='Resident Services', template_typ_code='RS_AUTH_HIST_SUCCESS_SMS', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1164' AND lang_code='eng';
     UPDATE master.template
     SET "name"='Historique de l''authentification des services résidents SMS de transcation', descr='SMS de réussite de la demande d''historique d''authentification', file_format_code='txt', model='velocity', file_txt='Bonjour $fullName_fra, Votre demande d''historique d''authentification a été traitée avec succès. Merci!', module_id='10006', module_name='Resident Services', template_typ_code='RS_AUTH_HIST_SUCCESS_SMS', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1164' AND lang_code='fra';
     UPDATE master.template
     SET "name"='تاريخ المصادقة طلب نجاح SMS', descr='تاريخ المصادقة طلب نجاح SMS', file_format_code='txt', model='velocity', file_txt='مرحبًا $ fullName_eng ، تمت معالجة طلبك الخاص بسجل المصادقة بنجاح. شكرا لكم!', module_id='10006', module_name='خدمات المقيمين', template_typ_code='RS_AUTH_HIST_SUCCESS_SMS', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1164' AND lang_code='ara';
     UPDATE master.template
     SET "name"='تاريخ المصادقة طلب نجاح EMAIL الموضوع', descr='تاريخ المصادقة طلب نجاح EMAIL الموضوع', file_format_code='txt', model='velocity', file_txt='نجاح طلب محفوظات المصادقة', module_id='10006', module_name='خدمات المقيمين', template_typ_code='RS_AUTH_HIST_SUCCESS_EMAIL_SUB', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1165' AND lang_code='ara';
     UPDATE master.template
     SET "name"='Authentication History Request Success EMAIL Subject', descr='Authentication History Request Success EMAIL Subject', file_format_code='txt', model='velocity', file_txt='Authentication History Request Success', module_id='10006', module_name='Resident Services', template_typ_code='RS_AUTH_HIST_SUCCESS_EMAIL_SUB', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1165' AND lang_code='eng';
     UPDATE master.template
     SET "name"='Succès EMAIL de la demande d''historique d''authentification', descr='Succès EMAIL de la demande d''historique d''authentification', file_format_code='txt', model='velocity', file_txt='Demande d''historique d''authentification', module_id='10006', module_name='Resident Services', template_typ_code='RS_AUTH_HIST_SUCCESS_EMAIL_SUB', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1165' AND lang_code='fra';
     UPDATE master.template
     SET "name"='Successful Download of e-UIN Email', descr='Successful Download of e-UIN Email', file_format_code='txt', model='velocity', file_txt='Hi $fullName_eng, Congratulations your request is processed. The request for downloading your e-UIN is Successful. Thank You!', module_id='10006', module_name='Resident Services', template_typ_code='RS_DOW_UIN_SUCCESS_EMAIL', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1166' AND lang_code='eng';
     UPDATE master.template
     SET "name"='Téléchargement réussi du courriel e-UIN', descr='Téléchargement réussi du courriel e-UIN', file_format_code='txt', model='velocity', file_txt='Bonjour $fullName_fra, Félicitations, votre demande est traitée. La demande de téléchargement de votre e-UIN a abouti. Merci!', module_id='10006', module_name='Resident Services', template_typ_code='RS_DOW_UIN_SUCCESS_EMAIL', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1166' AND lang_code='fra';
     UPDATE master.template
     SET "name"='تنزيل ناجح للبريد الإلكتروني e-UIN', descr='تنزيل ناجح للبريد الإلكتروني e-UIN', file_format_code='txt', model='velocity', file_txt='مرحبًا $ fullName_eng ، تهانينا ، تم معالجة طلبك. تم طلب تنزيل e-UIN الخاص بك بنجاح. شكرا لكم!', module_id='10006', module_name='خدمات المقيمين', template_typ_code='RS_DOW_UIN_SUCCESS_EMAIL', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1166' AND lang_code='ara';
     UPDATE master.template
     SET "name"='تنزيل ناجح لموضوع البريد الإلكتروني لـ e-UIN', descr='قم بتنزيل موضوع البريد الإلكتروني الخاص بحالة e-UIN', file_format_code='txt', model='velocity', file_txt='تم تنزيل e-UIN بنجاح', module_id='10006', module_name='خدمات المقيمين', template_typ_code='RS_DOW_UIN_SUCCESS_EMAIL_SUB', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1167' AND lang_code='ara';
     UPDATE master.template
     SET "name"='Successful Download of e-UIN Email Subject', descr='Download e-UIN Status Email Subject', file_format_code='txt', model='velocity', file_txt='Download e-UIN is Successful', module_id='10006', module_name='Resident Services', template_typ_code='RS_DOW_UIN_SUCCESS_EMAIL_SUB', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1167' AND lang_code='eng';
     UPDATE master.template
     SET "name"='Téléchargement réussi de l''objet de l''e-UIN', descr='Téléchargement réussi de l''objet de l''e-UIN', file_format_code='txt', model='velocity', file_txt='Télécharger e-UIN est réussi', module_id='10006', module_name='Resident Services', template_typ_code='RS_DOW_UIN_SUCCESS_EMAIL_SUB', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1167' AND lang_code='fra';
     UPDATE master.template
     SET "name"='Successful Download of e-UIN SMS', descr='Successful Download of e-UIN SMS', file_format_code='txt', model='velocity', file_txt='Hi $fullName_eng, Congratulations your request is processed. The request for downloading your e-UIN is Successful. Thank You!', module_id='10006', module_name='Resident Services', template_typ_code='RS_DOW_UIN_SUCCESS_SMS', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1168' AND lang_code='eng';
     UPDATE master.template
     SET "name"='Téléchargement réussi de l''e-UIN SMS', descr='Téléchargement réussi de l''e-UIN SMS', file_format_code='txt', model='velocity', file_txt='Bonjour $fullName_fra, Félicitations, votre demande est traitée. La demande de téléchargement de votre e-UIN a abouti. Merci!', module_id='10006', module_name='Resident Services', template_typ_code='RS_DOW_UIN_SUCCESS_SMS', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1168' AND lang_code='fra';
     UPDATE master.template
     SET "name"='تنزيل ناجح لرسائل SMS e-UIN', descr='تنزيل ناجح لرسائل SMS e-UIN', file_format_code='txt', model='velocity', file_txt='مرحبًا $ fullName_eng ، تهانينا ، تم معالجة طلبك. تم طلب تنزيل e-UIN الخاص بك بنجاح. شكرا لكم!', module_id='10006', module_name='خدمات المقيمين', template_typ_code='RS_DOW_UIN_SUCCESS_SMS', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1168' AND lang_code='ara';
     UPDATE master.template
     SET "name"='Successful Locking of Auth Types Email', descr='Successful Locking of Auth Types Email', file_format_code='txt', model='velocity', file_txt='Hi $fullName_eng, Your requested AUTH type(s) have been locked successfully. Thank You!', module_id='10006', module_name='Resident Services', template_typ_code='RS_LOCK_AUTH_SUCCESS_EMAIL', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1169' AND lang_code='eng';
     UPDATE master.template
     SET "name"='Verrouillage réussi des e-mails des types d''authentification', descr='Verrouillage réussi des e-mails des types d''authentification', file_format_code='txt', model='velocity', file_txt='Bonjour $fullName_fra, Le ou les types AUTH que vous avez demandés ont été verrouillés avec succès. Merci!', module_id='10006', module_name='Resident Services', template_typ_code='RS_LOCK_AUTH_SUCCESS_EMAIL', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1169' AND lang_code='fra';
     UPDATE master.template
     SET "name"='القفل الناجح لأنواع البريد الإلكتروني للمصادقة', descr='القفل الناجح لأنواع البريد الإلكتروني للمصادقة', file_format_code='txt', model='velocity', file_txt='مرحبًا $ fullName_eng ، تم تأمين نوع (أنواع) AUTH المطلوبة بنجاح. شكرا لكم!', module_id='10006', module_name='خدمات المقيمين', template_typ_code='RS_LOCK_AUTH_SUCCESS_EMAIL', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1169' AND lang_code='ara';
     UPDATE master.template
     SET "name"='قفل ناجح لأنواع المصادقة موضوع البريد الإلكتروني', descr='قفل ناجح لأنواع المصادقة موضوع البريد الإلكتروني', file_format_code='txt', model='velocity', file_txt='تم تأمين نوع (أنواع) AUTH بنجاح', module_id='10006', module_name='خدمات المقيمين', template_typ_code='RS_LOCK_AUTH_SUCCESS_EMAIL_SUB', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1170' AND lang_code='ara';
     UPDATE master.template
     SET "name"='Successful Locking of Auth Types Email Subject', descr='Successful Locking of Auth Types Email Subject', file_format_code='txt', model='velocity', file_txt='Successfully Locked the AUTH Type(s)', module_id='10006', module_name='Resident Services', template_typ_code='RS_LOCK_AUTH_SUCCESS_EMAIL_SUB', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1170' AND lang_code='eng';
     UPDATE master.template
     SET "name"='Succès du verrouillage des types d''authentification', descr='Succès du verrouillage des types d''authentification', file_format_code='txt', model='velocity', file_txt='Le ou les types AUTH ont été verrouillés avec succès', module_id='10006', module_name='Resident Services', template_typ_code='RS_LOCK_AUTH_SUCCESS_EMAIL_SUB', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1170' AND lang_code='fra';
     UPDATE master.template
     SET "name"='Successful Locking of Auth Types SMS', descr='Successful Locking of Auth Types SMS', file_format_code='txt', model='velocity', file_txt='Hi $fullName_eng, Your requested AUTH type(s) have been locked successfully. Thank You!', module_id='10006', module_name='Resident Services', template_typ_code='RS_LOCK_AUTH_SUCCESS_SMS', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1171' AND lang_code='eng';
     UPDATE master.template
     SET "name"='Verrouillage réussi des types d''authentification SMS', descr='Verrouillage réussi des types d''authentification SMS', file_format_code='txt', model='velocity', file_txt='Bonjour $fullName_fra, Le ou les types AUTH que vous avez demandés ont été verrouillés avec succès. Merci!', module_id='10006', module_name='Resident Services', template_typ_code='RS_LOCK_AUTH_SUCCESS_SMS', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1171' AND lang_code='fra';
     UPDATE master.template
     SET "name"='القفل الناجح لأنواع المصادقة SMS', descr='القفل الناجح لأنواع المصادقة SMS', file_format_code='txt', model='velocity', file_txt='مرحبًا $ fullName_eng ، تم تأمين نوع (أنواع) AUTH المطلوبة بنجاح. شكرا لكم!', module_id='10006', module_name='خدمات المقيمين', template_typ_code='RS_LOCK_AUTH_SUCCESS_SMS', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1171' AND lang_code='ara';
     UPDATE master.template
     SET "name"='Déverrouillage réussi des types d''authentification', descr='Déverrouillage réussi des types d''authentification', file_format_code='txt', model='velocity', file_txt='Bonjour $fullName_fra, Le ou les types AUTH demandés ont été déverrouillés avec succès. Merci!', module_id='10006', module_name='Resident Services', template_typ_code='RS_UNLOCK_AUTH_SUCCESS_EMAIL', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1172' AND lang_code='fra';
     UPDATE master.template
     SET "name"='Successful Unlocking of Auth Types Email', descr='Successful Unlocking of Auth Types Email', file_format_code='txt', model='velocity', file_txt='Hi $fullName_eng, Your requested AUTH type(s) have been unlocked successfully. Thank You!', module_id='10006', module_name='Resident Services', template_typ_code='RS_UNLOCK_AUTH_SUCCESS_EMAIL', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1172' AND lang_code='eng';
     UPDATE master.template
     SET "name"='فتح ناجح لأنواع البريد الإلكتروني للمصادقة', descr='فتح ناجح لأنواع البريد الإلكتروني للمصادقة', file_format_code='txt', model='velocity', file_txt='مرحبًا $ fullName_eng ، تم إلغاء تأمين نوع (أنواع) AUTH المطلوبة بنجاح. شكرا لكم!', module_id='10006', module_name='خدمات المقيمين', template_typ_code='RS_UNLOCK_AUTH_SUCCESS_EMAIL', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1172' AND lang_code='ara';
     UPDATE master.template
     SET "name"='فتح ناجح لأنواع المصادقة موضوع البريد الإلكتروني', descr='فتح ناجح لأنواع المصادقة موضوع البريد الإلكتروني', file_format_code='txt', model='velocity', file_txt='تم فتح نوع (أنواع) AUTH بنجاح', module_id='10006', module_name='خدمات المقيمين', template_typ_code='RS_UNLOCK_AUTH_SUCCESS_EMAIL_SUB', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1173' AND lang_code='ara';
     UPDATE master.template
     SET "name"='Successful Unlocking of Auth Types Email Subject', descr='Successful Unlocking of Auth Types Email Subject', file_format_code='txt', model='velocity', file_txt='Successfully Unlocked the AUTH Type(s)', module_id='10006', module_name='Resident Services', template_typ_code='RS_UNLOCK_AUTH_SUCCESS_EMAIL_SUB', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1173' AND lang_code='eng';
     UPDATE master.template
     SET "name"='Déverrouillage réussi des types d''authentification Objet de l''e-mail', descr='Déverrouillage réussi des types d''authentification Objet de l''e-mail', file_format_code='txt', model='velocity', file_txt='Déverrouillé avec succès le (s) type (s) AUTH', module_id='10006', module_name='Resident Services', template_typ_code='RS_UNLOCK_AUTH_SUCCESS_EMAIL_SUB', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1173' AND lang_code='fra';
     UPDATE master.template
     SET "name"='Successful Unlocking of Auth Types SMS', descr='Successful Unlocking of Auth Types SMS', file_format_code='txt', model='velocity', file_txt='Hi $fullName_eng, Your requested AUTH type(s) have been unlocked successfully. Thank You!', module_id='10006', module_name='Resident Services', template_typ_code='RS_UNLOCK_AUTH_SUCCESS_SMS', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1174' AND lang_code='eng';
     UPDATE master.template
     SET "name"='Déverrouillage réussi des types d''authentification SMS', descr='Déverrouillage réussi des types d''authentification SMS', file_format_code='txt', model='velocity', file_txt='Bonjour $fullName_fra, Le ou les types AUTH demandés ont été déverrouillés avec succès. Merci!', module_id='10006', module_name='Resident Services', template_typ_code='RS_UNLOCK_AUTH_SUCCESS_SMS', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1174' AND lang_code='fra';
     UPDATE master.template
     SET "name"='فتح ناجح لأنواع مصادقة الرسائل القصيرة', descr='فتح ناجح لأنواع مصادقة الرسائل القصيرة', file_format_code='txt', model='velocity', file_txt='مرحبًا $ fullName_eng ، تم إلغاء تأمين نوع (أنواع) AUTH المطلوبة بنجاح. شكرا لكم!', module_id='10006', module_name='خدمات المقيمين', template_typ_code='RS_UNLOCK_AUTH_SUCCESS_SMS', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1174' AND lang_code='ara';
     UPDATE master.template
     SET "name"='البريد الإلكتروني لنجاح إنشاء VID', descr='البريد الإلكتروني لنجاح إنشاء VID', file_format_code='txt', model='velocity', file_txt='مرحبًا $ fullName_eng ، تم إنشاء VID الخاص بك لـ UIN الخاص بك بنجاح. رقم VID الخاص بك هو $ VID. شكرا لكم!', module_id='10006', module_name='خدمات المقيمين', template_typ_code='RS_VIN_GEN_SUCCESS_EMAIL', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1175' AND lang_code='ara';
     UPDATE master.template
     SET "name"='VID Generation Success Email', descr='VID Generation Success Email', file_format_code='txt', model='velocity', file_txt='Hi $fullName_eng, Your VID for your UIN has been successfully generated. Your VID number is $VID. Thank You!', module_id='10006', module_name='Resident Services', template_typ_code='RS_VIN_GEN_SUCCESS_EMAIL', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1175' AND lang_code='eng';
     UPDATE master.template
     SET "name"='E-mail de réussite de la génération VID', descr='E-mail de réussite de la génération VID', file_format_code='txt', model='velocity', file_txt='Bonjour $fullName_fra, Votre VID pour votre UIN a été généré avec succès. Votre numéro VID est $VID. Merci!', module_id='10006', module_name='Resident Services', template_typ_code='RS_VIN_GEN_SUCCESS_EMAIL', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1175' AND lang_code='fra';
     UPDATE master.template
     SET "name"='موضوع البريد الإلكتروني لنجاح إنشاء VID', descr='موضوع البريد الإلكتروني لنجاح إنشاء VID', file_format_code='txt', model='velocity', file_txt='الجيل الناجح من VID', module_id='10006', module_name='خدمات المقيمين', template_typ_code='RS_VIN_GEN_SUCCESS_EMAIL_SUB', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1176' AND lang_code='ara';
     UPDATE master.template
     SET "name"='Sujet de l''e-mail de réussite de la génération VID', descr='Sujet de l''e-mail de réussite de la génération VID', file_format_code='txt', model='velocity', file_txt='Génération réussie de VID', module_id='10006', module_name='Resident Services', template_typ_code='RS_VIN_GEN_SUCCESS_EMAIL_SUB', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1176' AND lang_code='fra';
     UPDATE master.template
     SET "name"='VID Generation Success Email Subject', descr='VID Generation Success Email Subject', file_format_code='txt', model='velocity', file_txt='Successful Generation of VID', module_id='10006', module_name='Resident Services', template_typ_code='RS_VIN_GEN_SUCCESS_EMAIL_SUB', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1176' AND lang_code='eng';
     UPDATE master.template
     SET "name"='SMS de réussite de génération VID', descr='SMS de réussite de génération VID', file_format_code='txt', model='velocity', file_txt='Bonjour $fullName_fra, Votre VID pour votre UIN a été généré avec succès. Votre numéro VID est $VID. Merci!', module_id='10006', module_name='Resident Services', template_typ_code='RS_VIN_GEN_SUCCESS_SMS', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1177' AND lang_code='fra';
     UPDATE master.template
     SET "name"='نجاح إنشاء VID SMS', descr='نجاح إنشاء VID SMS', file_format_code='txt', model='velocity', file_txt='مرحبًا $ fullName_eng ، تم إنشاء VID الخاص بك لـ UIN الخاص بك بنجاح. رقم VID الخاص بك هو $ VID. شكرا لكم!', module_id='10006', module_name='خدمات المقيمين', template_typ_code='RS_VIN_GEN_SUCCESS_SMS', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1177' AND lang_code='ara';
     UPDATE master.template
     SET "name"='VID Generation Success SMS', descr='VID Generation Success SMS', file_format_code='txt', model='velocity', file_txt='Hi $fullName_eng, Your VID for your UIN has been successfully generated. Your VID number is $VID. Thank You!', module_id='10006', module_name='Resident Services', template_typ_code='RS_VIN_GEN_SUCCESS_SMS', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1177' AND lang_code='eng';
     UPDATE master.template
     SET "name"='VID Revocation Success Email', descr='VID Revocation Success Email', file_format_code='txt', model='velocity', file_txt='Hi $fullName_eng, Your $VID has been successfully revoked. Thank You!', module_id='10006', module_name='Resident Services', template_typ_code='RS_VIN_REV_SUCCESS_EMAIL', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1178' AND lang_code='eng';
     UPDATE master.template
     SET "name"='E-mail de réussite de la révocation de VID', descr='E-mail de réussite de la révocation de VID', file_format_code='txt', model='velocity', file_txt='Bonjour $fullName_fra, Votre $VID a bien été révoqué. Merci!', module_id='10006', module_name='Resident Services', template_typ_code='RS_VIN_REV_SUCCESS_EMAIL', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1178' AND lang_code='fra';
     UPDATE master.template
     SET "name"='البريد الإلكتروني لنجاح إبطال VID', descr='البريد الإلكتروني لنجاح إبطال VID', file_format_code='txt', model='velocity', file_txt='مرحبًا $ fullName_eng ، تم إبطال $ VID الخاص بك بنجاح. شكرا لكم!', module_id='10006', module_name='خدمات المقيمين', template_typ_code='RS_VIN_REV_SUCCESS_EMAIL', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1178' AND lang_code='ara';
     UPDATE master.template
     SET "name"='موضوع البريد الإلكتروني لنجاح إبطال VID', descr='موضوع البريد الإلكتروني لنجاح إبطال VID', file_format_code='txt', model='velocity', file_txt='الإلغاء الناجح لـ VID', module_id='10006', module_name='خدمات المقيمين', template_typ_code='RS_VIN_REV_SUCCESS_EMAIL_SUB', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1179' AND lang_code='ara';
     UPDATE master.template
     SET "name"='VID Revocation Success Email Subject', descr='VID Revocation Success Email Subject', file_format_code='txt', model='velocity', file_txt='Successful Revocation of VID', module_id='10006', module_name='Resident Services', template_typ_code='RS_VIN_REV_SUCCESS_EMAIL_SUB', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1179' AND lang_code='eng';
     UPDATE master.template
     SET "name"='Sujet de l''e-mail de réussite de la révocation de VID', descr='Sujet de l''e-mail de réussite de la révocation de VID', file_format_code='txt', model='velocity', file_txt='Révocation réussie de VID', module_id='10006', module_name='Resident Services', template_typ_code='RS_VIN_REV_SUCCESS_EMAIL_SUB', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1179' AND lang_code='fra';
     UPDATE master.template
     SET "name"='SMS نجاح إبطال VID', descr='SMS نجاح إبطال VID', file_format_code='txt', model='velocity', file_txt='مرحبًا $ fullName_eng ، تم إبطال $ VID الخاص بك بنجاح. شكرا لكم!', module_id='10006', module_name='خدمات المقيمين', template_typ_code='RS_VIN_REV_SUCCESS_SMS', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1180' AND lang_code='ara';
     UPDATE master.template
     SET "name"='VID Revocation Success SMS', descr='VID Revocation Success SMS', file_format_code='txt', model='velocity', file_txt='Hi $fullName_eng, Your $VID has been successfully revoked. Thank You!', module_id='10006', module_name='Resident Services', template_typ_code='RS_VIN_REV_SUCCESS_SMS', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1180' AND lang_code='eng';
     UPDATE master.template
     SET "name"='SMS de succès de révocation VID', descr='SMS de succès de révocation VID', file_format_code='txt', model='velocity', file_txt='Bonjour $fullName_fra, Votre $VID a bien été révoqué. Merci!', module_id='10006', module_name='Resident Services', template_typ_code='RS_VIN_REV_SUCCESS_SMS', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1180' AND lang_code='fra';
     UPDATE master.template
     SET "name"='Reprint Request Success Email', descr='Reprint Request Success Email', file_format_code='txt', model='velocity', file_txt='Hi $fullName_eng, Your request for Reprint Of UIN has been successfully placed. Your RID (Req Number) is $RID. Thank You!', module_id='10006', module_name='Resident Services', template_typ_code='RS_UIN_RPR_SUCCESS_EMAIL', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1181' AND lang_code='eng';
     UPDATE master.template
     SET "name"='إعادة طباعة طلب البريد الإلكتروني بنجاح', descr='إعادة طباعة طلب البريد الإلكتروني بنجاح', file_format_code='txt', model='velocity', file_txt='مرحبًا $ fullName_eng ، تم تقديم طلبك لـ إعادة طباعة UIN بنجاح. RID الخاص بك (رقم الطلب) هو $ RID. شكرا لكم!', module_id='10006', module_name='خدمات المقيمين', template_typ_code='RS_UIN_RPR_SUCCESS_EMAIL', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1181' AND lang_code='ara';
     UPDATE master.template
     SET "name"='Réimpression de l''e-mail de réussite de la demande', descr='Réimpression de l''e-mail de réussite de la demande', file_format_code='txt', model='velocity', file_txt='Bonjour $fullName_fra, Votre demande de Réimpression d''UIN a été placée avec succès. Votre RID (numéro de demande) est $RID. Merci!', module_id='10006', module_name='Resident Services', template_typ_code='RS_UIN_RPR_SUCCESS_EMAIL', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1181' AND lang_code='fra';
     UPDATE master.template
     SET "name"='إعادة طباعة عنوان البريد الإلكتروني بنجاح', descr='إعادة طباعة عنوان البريد الإلكتروني بنجاح', file_format_code='txt', model='velocity', file_txt='تم طلب إعادة الطباعة بنجاح', module_id='10006', module_name='خدمات المقيمين', template_typ_code='RS_UIN_RPR_SUCCESS_EMAIL_SUB', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1182' AND lang_code='ara';
     UPDATE master.template
     SET "name"='Sujet de l''e-mail de demande de réimpression réussie', descr='Sujet de l''e-mail de demande de réimpression réussie', file_format_code='txt', model='velocity', file_txt='Réimpression de la demande réussie', module_id='10006', module_name='Resident Services', template_typ_code='RS_UIN_RPR_SUCCESS_EMAIL_SUB', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1182' AND lang_code='fra';
     UPDATE master.template
     SET "name"='Reprint Request Success Email Subject', descr='Reprint Request Success Email Subject', file_format_code='txt', model='velocity', file_txt='Reprint Request Successful', module_id='10006', module_name='Resident Services', template_typ_code='RS_UIN_RPR_SUCCESS_EMAIL_SUB', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1182' AND lang_code='eng';
     UPDATE master.template
     SET "name"='Reprint Request Success SMS', descr='Reprint Request Success SMS', file_format_code='txt', model='velocity', file_txt='Hi $fullName_eng, Your request for Reprint Of UIN has been successfully placed. Your RID (Req Number) is $RID. Thank You!', module_id='10006', module_name='Resident Services', template_typ_code='RS_UIN_RPR_SUCCESS_SMS', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1183' AND lang_code='eng';
     UPDATE master.template
     SET "name"='Réimpression SMS de réussite de la demande', descr='Réimpression SMS de réussite de la demande', file_format_code='txt', model='velocity', file_txt='Bonjour $fullName_fra, Votre demande de Réimpression d''UIN a été placée avec succès. Votre RID (numéro de demande) est $RID. Merci!', module_id='10006', module_name='Resident Services', template_typ_code='RS_UIN_RPR_SUCCESS_SMS', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1183' AND lang_code='fra';
     UPDATE master.template
     SET "name"='إعادة طباعة طلب النجاح SMS', descr='إعادة طباعة طلب النجاح SMS', file_format_code='txt', model='velocity', file_txt='مرحبًا $ fullName_eng ، تم تقديم طلبك لـ إعادة طباعة UIN بنجاح. RID الخاص بك (رقم الطلب) هو $ RID. شكرا لكم!', module_id='10006', module_name='خدمات المقيمين', template_typ_code='RS_UIN_RPR_SUCCESS_SMS', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1183' AND lang_code='ara';
     UPDATE master.template
     SET "name"='تاريخ المصادقة طلب فشل البريد الإلكتروني', descr='تاريخ المصادقة طلب فشل البريد الإلكتروني', file_format_code='txt', model='velocity', file_txt='مرحبًا $ fullName_eng ، لقد فشل طلبك لجلب تفاصيل سجل المصادقة. شكرا لكم!', module_id='10006', module_name='خدمات المقيمين', template_typ_code='RS_AUTH_HIST_FAILURE_EMAIL', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1184' AND lang_code='ara';
     UPDATE master.template
     SET "name"='E-mail d''échec de la demande d''historique d''authentification', descr='E-mail d''échec de la demande d''historique d''authentification', file_format_code='txt', model='velocity', file_txt='Bonjour $fullName_fra, Votre demande de récupération des détails de votre historique d''authentification a échoué. Merci!', module_id='10006', module_name='Resident Services', template_typ_code='RS_AUTH_HIST_FAILURE_EMAIL', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1184' AND lang_code='fra';
     UPDATE master.template
     SET "name"='Authentication History Request Failure Email', descr='Authentication History Request Failure Email', file_format_code='txt', model='velocity', file_txt='Hi $fullName_eng, Your Request to fetch your Authentication History details has failed. Thank You!', module_id='10006', module_name='Resident Services', template_typ_code='RS_AUTH_HIST_FAILURE_EMAIL', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1184' AND lang_code='eng';
     UPDATE master.template
     SET "name"='Objet de l''e-mail d''échec de la demande d''historique d''authentification', descr='Objet de l''e-mail d''échec de la demande d''historique d''authentification', file_format_code='txt', model='velocity', file_txt='Échec de la demande d''historique d''authentification', module_id='10006', module_name='Resident Services', template_typ_code='RS_AUTH_HIST_FAILURE_EMAIL_SUB', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1185' AND lang_code='fra';
     UPDATE master.template
     SET "name"='Authentication History Request Failure Email Subject', descr='Authentication History Request Failure Email Subject', file_format_code='txt', model='velocity', file_txt='Authentication History Request Failure', module_id='10006', module_name='Resident Services', template_typ_code='RS_AUTH_HIST_FAILURE_EMAIL_SUB', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1185' AND lang_code='eng';
     UPDATE master.template
     SET "name"='فشل طلب محفوظات المصادقة عبر البريد الإلكتروني', descr='فشل طلب محفوظات المصادقة عبر البريد الإلكتروني', file_format_code='txt', model='velocity', file_txt='فشل طلب محفوظات المصادقة', module_id='10006', module_name='خدمات المقيمين', template_typ_code='RS_AUTH_HIST_FAILURE_EMAIL_SUB', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1185' AND lang_code='ara';
     UPDATE master.template
     SET "name"='فشل طلب محفوظات المصادقة SMS', descr='فشل طلب محفوظات المصادقة SMS', file_format_code='txt', model='velocity', file_txt='مرحبًا $ fullName_eng ، لقد فشل طلبك لسجل المصادقة. شكرا لكم!', module_id='10006', module_name='خدمات المقيمين', template_typ_code='RS_AUTH_HIST_FAILURE_SMS', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1186' AND lang_code='ara';
     UPDATE master.template
     SET "name"='SMS d''échec de la demande d''historique d''authentification', descr='SMS d''échec de la demande d''historique d''authentification', file_format_code='txt', model='velocity', file_txt='Bonjour $fullName_fra, Votre demande de récupération des détails de votre historique d''authentification a échoué. Merci!', module_id='10006', module_name='Resident Services', template_typ_code='RS_AUTH_HIST_FAILURE_SMS', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1186' AND lang_code='fra';
     UPDATE master.template
     SET "name"='Authentication History Request Failure SMS', descr='Authentication History Request Failure SMS', file_format_code='txt', model='velocity', file_txt='Hi $fullName_eng, Your Request for Authentication History has failed. Thank You!', module_id='10006', module_name='Resident Services', template_typ_code='RS_AUTH_HIST_FAILURE_SMS', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1186' AND lang_code='eng';
     UPDATE master.template
     SET "name"='Télécharger l''e-mail d''échec e-UIN', descr='Télécharger l''e-mail d''échec e-UIN', file_format_code='txt', model='velocity', file_txt='Bonjour $fullName_fra, Votre demande de téléchargement de votre e-UIN a échoué. Veuillez réessayer plus tard. Merci!', module_id='10006', module_name='Resident Services', template_typ_code='RS_DOW_UIN_FAILURE_EMAIL', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1187' AND lang_code='fra';
     UPDATE master.template
     SET "name"='Download e-UIN Failure Email', descr='Download e-UIN Failure Email', file_format_code='txt', model='velocity', file_txt='Hi $fullName_eng, Your request for downloading your e-UIN has failed. Please try again later. Thank You!', module_id='10006', module_name='Resident Services', template_typ_code='RS_DOW_UIN_FAILURE_EMAIL', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1187' AND lang_code='eng';
     UPDATE master.template
     SET "name"='تنزيل البريد الإلكتروني لفشل e-UIN', descr='تنزيل البريد الإلكتروني لفشل e-UIN', file_format_code='txt', model='velocity', file_txt='مرحبًا $ fullName_eng ، لقد فشل طلبك لتنزيل e-UIN الخاص بك. الرجاء معاودة المحاولة في وقت لاحق. شكرا لكم!', module_id='10006', module_name='خدمات المقيمين', template_typ_code='RS_DOW_UIN_FAILURE_EMAIL', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1187' AND lang_code='ara';
     UPDATE master.template
     SET "name"='Download e-UIN Failure Email Subject', descr='Download e-UIN Failure Email Subject', file_format_code='txt', model='velocity', file_txt='Download e-UIN Failure', module_id='10006', module_name='Resident Services', template_typ_code='RS_DOW_UIN_FAILURE_EMAIL_SUB', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1188' AND lang_code='eng';
     UPDATE master.template
     SET "name"='Télécharger le sujet de l''e-mail d''échec e-UIN', descr='Télécharger le sujet de l''e-mail d''échec e-UIN', file_format_code='txt', model='velocity', file_txt='Échec du téléchargement de l''e-UIN', module_id='10006', module_name='Resident Services', template_typ_code='RS_DOW_UIN_FAILURE_EMAIL_SUB', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1188' AND lang_code='fra';
     UPDATE master.template
     SET "name"='تنزيل موضوع البريد الإلكتروني لفشل e-UIN', descr='تنزيل موضوع البريد الإلكتروني لفشل e-UIN', file_format_code='txt', model='velocity', file_txt='فشل تنزيل e-UIN', module_id='10006', module_name='خدمات المقيمين', template_typ_code='RS_DOW_UIN_FAILURE_EMAIL_SUB', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1188' AND lang_code='ara';
     UPDATE master.template
     SET "name"='Download e-UIN Failure SMS', descr='Download e-UIN Failure SMS', file_format_code='txt', model='velocity', file_txt='Hi $fullName_eng, Your request for downloading your e-UIN has failed. Please try again later. Thank You!', module_id='10006', module_name='Resident Services', template_typ_code='RS_DOW_UIN_FAILURE_SMS', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1189' AND lang_code='eng';
     UPDATE master.template
     SET "name"='تنزيل رسائل فشل e-UIN SMS', descr='تنزيل رسائل فشل e-UIN SMS', file_format_code='txt', model='velocity', file_txt='مرحبًا $ fullName_eng ، لقد فشل طلبك لتنزيل e-UIN الخاص بك. الرجاء معاودة المحاولة في وقت لاحق. شكرا لكم!', module_id='10006', module_name='خدمات المقيمين', template_typ_code='RS_DOW_UIN_FAILURE_SMS', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1189' AND lang_code='ara';
     UPDATE master.template
     SET "name"='Télécharger le SMS d''échec e-UIN', descr='Télécharger le SMS d''échec e-UIN', file_format_code='txt', model='velocity', file_txt='Bonjour $fullName_fra, Votre demande de téléchargement de votre e-UIN a échoué. Veuillez réessayer plus tard. Merci!', module_id='10006', module_name='Resident Services', template_typ_code='RS_DOW_UIN_FAILURE_SMS', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1189' AND lang_code='fra';
     UPDATE master.template
     SET "name"='فشل في قفل البريد الإلكتروني لأنواع المصادقة', descr='فشل في قفل البريد الإلكتروني لأنواع المصادقة', file_format_code='txt', model='velocity', file_txt='مرحبًا $ fullName_eng ، لقد فشل طلبك لقفل نوع (أنواع) AUTH. الرجاء معاودة المحاولة في وقت لاحق. شكرا لكم!', module_id='10006', module_name='خدمات المقيمين', template_typ_code='RS_LOCK_AUTH_FAILURE_EMAIL', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1190' AND lang_code='ara';
     UPDATE master.template
     SET "name"='Échec du verrouillage des e-mails des types d''authentification', descr='Échec du verrouillage des e-mails des types d''authentification', file_format_code='txt', model='velocity', file_txt='Bonjour $fullName_fra, Votre ou vos types de verrouillage AUTH demandés ont échoué. Veuillez réessayer plus tard. Merci!', module_id='10006', module_name='Resident Services', template_typ_code='RS_LOCK_AUTH_FAILURE_EMAIL', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1190' AND lang_code='fra';
     UPDATE master.template
     SET "name"='Failure in Locking of Auth Types Email', descr='Failure in Locking of Auth Types Email', file_format_code='txt', model='velocity', file_txt='Hi $fullName_eng, Your requested for Locking AUTH type(s) has failed. Please try again later. Thank You!', module_id='10006', module_name='Resident Services', template_typ_code='RS_LOCK_AUTH_FAILURE_EMAIL', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1190' AND lang_code='eng';
     UPDATE master.template
     SET "name"='فشل في قفل موضوع البريد الإلكتروني لأنواع المصادقة', descr='فشل في قفل موضوع البريد الإلكتروني لأنواع المصادقة', file_format_code='txt', model='velocity', file_txt='فشل تأمين نوع (أنواع) AUTH', module_id='10006', module_name='خدمات المقيمين', template_typ_code='RS_LOCK_AUTH_FAILURE_EMAIL_SUB', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1191' AND lang_code='ara';
     UPDATE master.template
     SET "name"='Échec du verrouillage des types d''authentification Objet de l''e-mail', descr='Échec du verrouillage des types d''authentification Objet de l''e-mail', file_format_code='txt', model='velocity', file_txt='Échec du verrouillage du ou des types AUTH', module_id='10006', module_name='Resident Services', template_typ_code='RS_LOCK_AUTH_FAILURE_EMAIL_SUB', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1191' AND lang_code='fra';
     UPDATE master.template
     SET "name"='Failure in Locking of Auth Types Email Subject', descr='Failure in Locking of Auth Types Email Subject', file_format_code='txt', model='velocity', file_txt='Locking of AUTH Type(s) Failed', module_id='10006', module_name='Resident Services', template_typ_code='RS_LOCK_AUTH_FAILURE_EMAIL_SUB', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1191' AND lang_code='eng';
     UPDATE master.template
     SET "name"='فشل في قفل أنواع المصادقة SMS', descr='فشل في قفل أنواع المصادقة SMS', file_format_code='txt', model='velocity', file_txt='مرحبًا $ fullName_eng ، لقد فشل طلبك لقفل نوع (أنواع) AUTH. الرجاء معاودة المحاولة في وقت لاحق. شكرا لكم!', module_id='10006', module_name='خدمات المقيمين', template_typ_code='RS_LOCK_AUTH_FAILURE_SMS', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1192' AND lang_code='ara';
     UPDATE master.template
     SET "name"='Failure in Locking of Auth Types SMS', descr='Failure in Locking of Auth Types SMS', file_format_code='txt', model='velocity', file_txt='Hi $fullName_eng, Your requested for Locking AUTH type(s) has failed. Please try again later. Thank You!', module_id='10006', module_name='Resident Services', template_typ_code='RS_LOCK_AUTH_FAILURE_SMS', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1192' AND lang_code='eng';
     UPDATE master.template
     SET "name"='Échec du verrouillage des types d''authentification SMS', descr='Échec du verrouillage des types d''authentification SMS', file_format_code='txt', model='velocity', file_txt='Bonjour $fullName_fra, Votre ou vos types de verrouillage AUTH demandés ont échoué. Veuillez réessayer plus tard. Merci!', module_id='10006', module_name='Resident Services', template_typ_code='RS_LOCK_AUTH_FAILURE_SMS', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1192' AND lang_code='fra';
     UPDATE master.template
     SET "name"='E-mail d''échec de la demande de réimpression', descr='E-mail d''échec de la demande de réimpression', file_format_code='txt', model='velocity', file_txt='Bonjour $fullName_fra, Votre demande de «réimpression de la carte UIN» a échoué. Veuillez réessayer plus tard. Merci!', module_id='10006', module_name='Resident Services', template_typ_code='RS_UIN_RPR_FAILURE_EMAIL', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1193' AND lang_code='fra';
     UPDATE master.template
     SET "name"='Reprint Request Failure Email', descr='Reprint Request Failure Email', file_format_code='txt', model='velocity', file_txt='Hi $fullName_eng, Your request for Reprint of UIN Card has failed. Please try again later. Thank You!', module_id='10006', module_name='Resident Services', template_typ_code='RS_UIN_RPR_FAILURE_EMAIL', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1193' AND lang_code='eng';
     UPDATE master.template
     SET "name"='إعادة طباعة البريد الإلكتروني لطلب الفشل', descr='إعادة طباعة البريد الإلكتروني لطلب الفشل', file_format_code='txt', model='velocity', file_txt='مرحبًا $ fullName_eng ، لقد فشل طلبك بشأن إعادة طباعة بطاقة UIN. الرجاء معاودة المحاولة في وقت لاحق. شكرا لكم!', module_id='10006', module_name='خدمات المقيمين', template_typ_code='RS_UIN_RPR_FAILURE_EMAIL', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1193' AND lang_code='ara';
     UPDATE master.template
     SET "name"='Échec de la demande de réimpression Objet de l''e-mail', descr='Échec de la demande de réimpression Objet de l''e-mail', file_format_code='txt', model='velocity', file_txt='Échec de la demande de réimpression', module_id='10006', module_name='Resident Services', template_typ_code='RS_UIN_RPR_FAILURE_EMAIL_SUB', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1194' AND lang_code='fra';
     UPDATE master.template
     SET "name"='Reprint Request Failure Email Subject', descr='Reprint Request Failure Email Subject', file_format_code='txt', model='velocity', file_txt='Reprint Request Failure', module_id='10006', module_name='Resident Services', template_typ_code='RS_UIN_RPR_FAILURE_EMAIL_SUB', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1194' AND lang_code='eng';
     UPDATE master.template
     SET "name"='إعادة طباعة طلب فشل عنوان البريد الإلكتروني', descr='إعادة طباعة طلب فشل عنوان البريد الإلكتروني', file_format_code='txt', model='velocity', file_txt='فشل طلب إعادة الطباعة', module_id='10006', module_name='خدمات المقيمين', template_typ_code='RS_UIN_RPR_FAILURE_EMAIL_SUB', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1194' AND lang_code='ara';
     UPDATE master.template
     SET "name"='إعادة طباعة فشل طلب الرسائل القصيرة', descr='إعادة طباعة فشل طلب الرسائل القصيرة', file_format_code='txt', model='velocity', file_txt='مرحبًا $ fullName_eng ، لقد فشل طلبك بشأن إعادة طباعة بطاقة UIN. الرجاء معاودة المحاولة في وقت لاحق. شكرا لكم!', module_id='10006', module_name='خدمات المقيمين', template_typ_code='RS_UIN_RPR_FAILURE_SMS', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1195' AND lang_code='ara';
     UPDATE master.template
     SET "name"='Reprint Request Failure SMS', descr='Reprint Request Failure SMS', file_format_code='txt', model='velocity', file_txt='Hi $fullName_eng, Your request for Reprint of UIN Card has failed. Please try again later. Thank You!', module_id='10006', module_name='Resident Services', template_typ_code='RS_UIN_RPR_FAILURE_SMS', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1195' AND lang_code='eng';
     UPDATE master.template
     SET "name"='SMS d''échec de la demande de réimpression', descr='SMS d''échec de la demande de réimpression', file_format_code='txt', model='velocity', file_txt='Bonjour $fullName_fra, Votre demande de «réimpression de la carte UIN» a échoué. Veuillez réessayer plus tard. Merci!', module_id='10006', module_name='Resident Services', template_typ_code='RS_UIN_RPR_FAILURE_SMS', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1195' AND lang_code='fra';
     UPDATE master.template
     SET "name"='Échec du déverrouillage de la messagerie électronique des types d''authentification', descr='Échec du déverrouillage de la messagerie électronique des types d''authentification', file_format_code='txt', model='velocity', file_txt='Bonjour $fullName_fra, Votre demande de déverrouillage de type (s) AUTH a échoué. Veuillez réessayer plus tard. Merci!', module_id='10006', module_name='Resident Services', template_typ_code='RS_UNLOCK_AUTH_FAILURE_EMAIL', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1196' AND lang_code='fra';
     UPDATE master.template
     SET "name"='Failure in Unlocking of Auth Types Email', descr='Failure in Unlocking of Auth Types Email', file_format_code='txt', model='velocity', file_txt='Hi $fullName_eng, Your requested for unlocking AUTH type(s) has failed. Please try again later. Thank You!', module_id='10006', module_name='Resident Services', template_typ_code='RS_UNLOCK_AUTH_FAILURE_EMAIL', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1196' AND lang_code='eng';
     UPDATE master.template
     SET "name"='فشل في إلغاء قفل البريد الإلكتروني لأنواع المصادقة', descr='فشل في إلغاء قفل البريد الإلكتروني لأنواع المصادقة', file_format_code='txt', model='velocity', file_txt='مرحبًا $ fullName_eng ، لقد فشل طلبك لإلغاء تأمين نوع (أنواع) AUTH. الرجاء معاودة المحاولة في وقت لاحق. شكرا لكم!', module_id='10006', module_name='خدمات المقيمين', template_typ_code='RS_UNLOCK_AUTH_FAILURE_EMAIL', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1196' AND lang_code='ara';
     UPDATE master.template
     SET "name"='فشل في إلغاء تأمين موضوع البريد الإلكتروني لأنواع المصادقة', descr='فشل في إلغاء تأمين موضوع البريد الإلكتروني لأنواع المصادقة', file_format_code='txt', model='velocity', file_txt='فشل فتح نوع (أنواع) AUTH', module_id='10006', module_name='خدمات المقيمين', template_typ_code='RS_UNLOCK_AUTH_FAILURE_EMAIL_SUB', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1197' AND lang_code='ara';
     UPDATE master.template
     SET "name"='Échec du déverrouillage du sujet de l''e-mail des types d''authentification', descr='Échec du déverrouillage du sujet de l''e-mail des types d''authentification', file_format_code='txt', model='velocity', file_txt='Le déverrouillage du ou des types AUTH a échoué', module_id='10006', module_name='Resident Services', template_typ_code='RS_UNLOCK_AUTH_FAILURE_EMAIL_SUB', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1197' AND lang_code='fra';
     UPDATE master.template
     SET "name"='Failure in Unlocking of Auth Types Email Subject', descr='Failure in Unlocking of Auth Types Email Subject', file_format_code='txt', model='velocity', file_txt='Unlocking of AUTH Type(s) Failed', module_id='10006', module_name='Resident Services', template_typ_code='RS_UNLOCK_AUTH_FAILURE_EMAIL_SUB', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1197' AND lang_code='eng';
     UPDATE master.template
     SET "name"='Échec de déverrouillage des types d''authentification SMS', descr='Échec de déverrouillage des types d''authentification SMS', file_format_code='txt', model='velocity', file_txt='Bonjour $fullName_fra, Votre demande de déverrouillage de type (s) AUTH a échoué. Veuillez réessayer plus tard. Merci!', module_id='10006', module_name='Resident Services', template_typ_code='RS_UNLOCK_AUTH_FAILURE_SMS', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1198' AND lang_code='fra';
     UPDATE master.template
     SET "name"='فشل في فتح قفل أنواع المصادقة SMS', descr='فشل في فتح قفل أنواع المصادقة SMS', file_format_code='txt', model='velocity', file_txt='مرحبًا $ fullName_eng ، لقد فشل طلبك لإلغاء تأمين نوع (أنواع) AUTH. الرجاء معاودة المحاولة في وقت لاحق. شكرا لكم!', module_id='10006', module_name='خدمات المقيمين', template_typ_code='RS_UNLOCK_AUTH_FAILURE_SMS', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1198' AND lang_code='ara';
     UPDATE master.template
     SET "name"='Failure in Unlocking of Auth Types SMS', descr='Failure in Unlocking of Auth Types SMS', file_format_code='txt', model='velocity', file_txt='Hi $fullName_eng, Your requested for unlocking AUTH type(s) has failed. Please try again later. Thank You!', module_id='10006', module_name='Resident Services', template_typ_code='RS_UNLOCK_AUTH_FAILURE_SMS', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1198' AND lang_code='eng';
     UPDATE master.template
     SET "name"='VID Generation Failure Email', descr='VID Generation Failure Email', file_format_code='txt', model='velocity', file_txt='Hi $fullName_eng, VID generation for your UIN failed. Please try again later. Thank You!', module_id='10006', module_name='Resident Services', template_typ_code='RS_VIN_GEN_FAILURE_EMAIL', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1199' AND lang_code='eng';
     UPDATE master.template
     SET "name"='E-mail d''échec de génération de VID', descr='E-mail d''échec de génération de VID', file_format_code='txt', model='velocity', file_txt='Bonjour $fullName_fra, La génération de VID pour votre UIN a échoué. Veuillez réessayer plus tard. Merci!', module_id='10006', module_name='Resident Services', template_typ_code='RS_VIN_GEN_FAILURE_EMAIL', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1199' AND lang_code='fra';
     UPDATE master.template
     SET "name"='فشل إنشاء VID', descr='فشل إنشاء VID', file_format_code='txt', model='velocity', file_txt='مرحبًا $ fullName_eng ، فشل إنشاء VID لـ UIN الخاص بك. الرجاء معاودة المحاولة في وقت لاحق. شكرا لكم!', module_id='10006', module_name='خدمات المقيمين', template_typ_code='RS_VIN_GEN_FAILURE_EMAIL', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1199' AND lang_code='ara';
     UPDATE master.template
     SET "name"='VID Generation Failure Email Subject', descr='VID Generation Failure Email Subject', file_format_code='txt', model='velocity', file_txt='VID Generation Failure', module_id='10006', module_name='Resident Services', template_typ_code='RS_VIN_GEN_FAILURE_EMAIL_SUB', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1200' AND lang_code='eng';
     UPDATE master.template
     SET "name"='Objet de l''e-mail d''échec de génération de VID', descr='Objet de l''e-mail d''échec de génération de VID', file_format_code='txt', model='velocity', file_txt='Échec de génération de VID', module_id='10006', module_name='Resident Services', template_typ_code='RS_VIN_GEN_FAILURE_EMAIL_SUB', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1200' AND lang_code='fra';
     UPDATE master.template
     SET "name"='VID Generation Failure Email Subject', descr='VID Generation Failure Email Subject', file_format_code='txt', model='velocity', file_txt='فشل إنشاء VID', module_id='10006', module_name='خدمات المقيمين', template_typ_code='RS_VIN_GEN_FAILURE_EMAIL_SUB', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1200' AND lang_code='ara';
     UPDATE master.template
     SET "name"='SMS d''échec de génération de VID', descr='SMS d''échec de génération de VID', file_format_code='txt', model='velocity', file_txt='Bonjour $fullName_fra, La génération de VID pour votre UIN a échoué. Veuillez réessayer plus tard. Merci!', module_id='10006', module_name='Resident Services', template_typ_code='RS_VIN_GEN_FAILURE_SMS', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1201' AND lang_code='fra';
     UPDATE master.template
     SET "name"='فشل إنشاء VID SMS', descr='فشل إنشاء VID SMS', file_format_code='txt', model='velocity', file_txt='مرحبًا $ fullName_eng ، فشل إنشاء VID لـ UIN الخاص بك. الرجاء معاودة المحاولة في وقت لاحق. شكرا لكم!', module_id='10006', module_name='خدمات المقيمين', template_typ_code='RS_VIN_GEN_FAILURE_SMS', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1201' AND lang_code='ara';
     UPDATE master.template
     SET "name"='VID Generation Failure SMS', descr='VID Generation Failure SMS', file_format_code='txt', model='velocity', file_txt='Hi $fullName_eng, VID generation for your UIN failed. Please try again later. Thank You!', module_id='10006', module_name='Resident Services', template_typ_code='RS_VIN_GEN_FAILURE_SMS', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1201' AND lang_code='eng';
     UPDATE master.template
     SET "name"='VID Revocation Failure Email', descr='VID Revocation Failure Email', file_format_code='txt', model='velocity', file_txt='Hi $fullName_eng, Your $VID revokation has failed. Please try again later. Thank You!', module_id='10006', module_name='Resident Services', template_typ_code='RS_VIN_REV_FAILURE_EMAIL', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1202' AND lang_code='eng';
     UPDATE master.template
     SET "name"='E-mail d''échec de révocation de VID', descr='E-mail d''échec de révocation de VID', file_format_code='txt', model='velocity', file_txt='Bonjour $fullName_fra, Votre révocation de $VID a échoué. Veuillez réessayer plus tard. Merci!', module_id='10006', module_name='Resident Services', template_typ_code='RS_VIN_REV_FAILURE_EMAIL', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1202' AND lang_code='fra';
     UPDATE master.template
     SET "name"='البريد الإلكتروني لفشل إبطال VID', descr='البريد الإلكتروني لفشل إبطال VID', file_format_code='txt', model='velocity', file_txt='مرحبًا $ fullName_eng ، لقد فشل إبطال $ VID الخاص بك. الرجاء معاودة المحاولة في وقت لاحق. شكرا لكم!', module_id='10006', module_name='خدمات المقيمين', template_typ_code='RS_VIN_REV_FAILURE_EMAIL', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1202' AND lang_code='ara';
     UPDATE master.template
     SET "name"='موضوع البريد الإلكتروني لفشل إبطال VID', descr='موضوع البريد الإلكتروني لفشل إبطال VID', file_format_code='txt', model='velocity', file_txt='فشل إبطال VID', module_id='10006', module_name='خدمات المقيمين', template_typ_code='RS_VIN_REV_FAILURE_EMAIL_SUB', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1203' AND lang_code='ara';
     UPDATE master.template
     SET "name"='VID Revocation Failure Email Subject', descr='VID Revocation Failure Email Subject', file_format_code='txt', model='velocity', file_txt='VID Revokation Failure', module_id='10006', module_name='Resident Services', template_typ_code='RS_VIN_REV_FAILURE_EMAIL_SUB', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1203' AND lang_code='eng';
     UPDATE master.template
     SET "name"='Objet de l''e-mail d''échec de la révocation du VID', descr='Objet de l''e-mail d''échec de la révocation du VID', file_format_code='txt', model='velocity', file_txt='Échec de révocation de VID', module_id='10006', module_name='Resident Services', template_typ_code='RS_VIN_REV_FAILURE_EMAIL_SUB', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1203' AND lang_code='fra';
     UPDATE master.template
     SET "name"='VID Revocation Failure SMS', descr='VID Revocation Failure SMS', file_format_code='txt', model='velocity', file_txt='Hi $fullName_eng, Your $VID revokation has failed. Please try again later. Thank You!', module_id='10006', module_name='Resident Services', template_typ_code='RS_VIN_REV_FAILURE_SMS', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1204' AND lang_code='eng';
     UPDATE master.template
     SET "name"='SMS d''échec de révocation de VID', descr='SMS d''échec de révocation de VID', file_format_code='txt', model='velocity', file_txt='Bonjour $fullName_fra, Votre révocation de $VID a échoué. Veuillez réessayer plus tard. Merci!', module_id='10006', module_name='Resident Services', template_typ_code='RS_VIN_REV_FAILURE_SMS', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1204' AND lang_code='fra';
     UPDATE master.template
     SET "name"='فشل إبطال VID SMS', descr='فشل إبطال VID SMS', file_format_code='txt', model='velocity', file_txt='مرحبًا $ fullName_eng ، لقد فشل إبطال $ VID الخاص بك. الرجاء معاودة المحاولة في وقت لاحق. شكرا لكم!', module_id='10006', module_name='خدمات المقيمين', template_typ_code='RS_VIN_REV_FAILURE_SMS', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1204' AND lang_code='ara';
     UPDATE master.template
     SET "name"='تم إرسال طلب تحديث UIN بنجاح عبر البريد الإلكتروني', descr='تم إرسال طلب تحديث UIN بنجاح عبر البريد الإلكتروني', file_format_code='txt', model='velocity', file_txt='مرحبًا $ fullName_eng ، تم تقديم طلبك لـ تحديث UIN بنجاح. RID الخاص بك (رقم الطلب) هو $ RID للتتبع. شكرا لكم!', module_id='10006', module_name='خدمات المقيمين', template_typ_code='RS_UIN_UPDATE_SUCCESS_EMAIL', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1205' AND lang_code='ara';
     UPDATE master.template
     SET "name"='E-mail de demande de mise à jour UIN placé avec succès', descr='E-mail de demande de mise à jour UIN placé avec succès', file_format_code='txt', model='velocity', file_txt='Bonjour $fullName_fra, Votre demande de «mise à jour UIN» a été envoyée avec succès. Votre RID (numéro de demande) est $RID pour le suivi. Merci!', module_id='10006', module_name='Resident Services', template_typ_code='RS_UIN_UPDATE_SUCCESS_EMAIL', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1205' AND lang_code='fra';
     UPDATE master.template
     SET "name"='UIN Update Request Placed Successfully Email', descr='UIN Update Request Placed Successfully Email', file_format_code='txt', model='velocity', file_txt='Hi $fullName_eng, Your request for UIN Update has been successfully placed. Your RID (Req Number) is $RID for tracking. Thank You!', module_id='10006', module_name='Resident Services', template_typ_code='RS_UIN_UPDATE_SUCCESS_EMAIL', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1205' AND lang_code='eng';
     UPDATE master.template
     SET "name"='Sujet de la demande de mise à jour UIN placé avec succès', descr='Sujet de la demande de mise à jour UIN placé avec succès', file_format_code='txt', model='velocity', file_txt='Demande de mise à jour UIN placée avec succès', module_id='10006', module_name='Resident Services', template_typ_code='RS_UIN_UPDATE_SUCCESS_EMAIL_SUB', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1206' AND lang_code='fra';
     UPDATE master.template
     SET "name"='UIN Update Request Placed Successfully Email Subject', descr='UIN Update Request Placed Successfully Email Subject', file_format_code='txt', model='velocity', file_txt='UIN Update Request Placed Successfully', module_id='10006', module_name='Resident Services', template_typ_code='RS_UIN_UPDATE_SUCCESS_EMAIL_SUB', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1206' AND lang_code='eng';
     UPDATE master.template
     SET "name"='تم تقديم طلب تحديث UIN بنجاح عبر البريد الإلكتروني الموضوع', descr='تم تقديم طلب تحديث UIN بنجاح عبر البريد الإلكتروني الموضوع', file_format_code='txt', model='velocity', file_txt='تم تقديم طلب تحديث UIN بنجاح', module_id='10006', module_name='خدمات المقيمين', template_typ_code='RS_UIN_UPDATE_SUCCESS_EMAIL_SUB', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1206' AND lang_code='ara';
     UPDATE master.template
     SET "name"='تم تقديم طلب تحديث UIN بنجاح عبر الرسائل القصيرة', descr='تم تقديم طلب تحديث UIN بنجاح عبر الرسائل القصيرة', file_format_code='txt', model='velocity', file_txt='مرحبًا $ fullName_eng ، تم تقديم طلبك لـ تحديث UIN بنجاح. RID الخاص بك (رقم الطلب) هو $ RID للتتبع. شكرا لكم!', module_id='10006', module_name='خدمات المقيمين', template_typ_code='RS_UIN_UPDATE_SUCCESS_SMS', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1207' AND lang_code='ara';
     UPDATE master.template
     SET "name"='UIN Update Request Placed Successfully SMS', descr='UIN Update Request Placed Successfully SMS', file_format_code='txt', model='velocity', file_txt='Hi $fullName_eng, Your request for UIN Update has been successfully placed. Your RID (Req Number) is $RID for tracking. Thank You!', module_id='10006', module_name='Resident Services', template_typ_code='RS_UIN_UPDATE_SUCCESS_SMS', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1207' AND lang_code='eng';
     UPDATE master.template
     SET "name"='Demande de mise à jour UIN placée avec succès SMS', descr='Demande de mise à jour UIN placée avec succès SMS', file_format_code='txt', model='velocity', file_txt='Bonjour $fullName_fra, Votre demande de «mise à jour UIN» a été envoyée avec succès. Votre RID (numéro de demande) est $RID pour le suivi. Merci!', module_id='10006', module_name='Resident Services', template_typ_code='RS_UIN_UPDATE_SUCCESS_SMS', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1207' AND lang_code='fra';
     UPDATE master.template
     SET "name"='E-mail d''échec de la demande de mise à jour UIN', descr='E-mail d''échec de la demande de mise à jour UIN', file_format_code='txt', model='velocity', file_txt='Bonjour $fullName_fra, Nous n''avons pas pu traiter votre demande de «mise à jour UIN». Veuillez réessayer plus tard. Merci!', module_id='10006', module_name='Resident Services', template_typ_code='RS_UIN_UPDATE_FAILURE_EMAIL', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1208' AND lang_code='fra';
     UPDATE master.template
     SET "name"='UIN Update Request Failed Email', descr='UIN Update Request Failed Email', file_format_code='txt', model='velocity', file_txt='Hi $fullName_eng, We were unable to process your UIN Update request. Please try again later. Thank You!', module_id='10006', module_name='Resident Services', template_typ_code='RS_UIN_UPDATE_FAILURE_EMAIL', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1208' AND lang_code='eng';
     UPDATE master.template
     SET "name"='فشل طلب تحديث UIN عبر البريد الإلكتروني', descr='فشل طلب تحديث UIN عبر البريد الإلكتروني', file_format_code='txt', model='velocity', file_txt='مرحبًا $ fullName_eng ، لم نتمكن من معالجة طلب تحديث UIN الخاص بك. الرجاء معاودة المحاولة في وقت لاحق. شكرا لكم!', module_id='10006', module_name='خدمات المقيمين', template_typ_code='RS_UIN_UPDATE_FAILURE_EMAIL', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1208' AND lang_code='ara';
     UPDATE master.template
     SET "name"='فشل طلب تحديث UIN عنوان البريد الإلكتروني', descr='فشل طلب تحديث UIN عنوان البريد الإلكتروني', file_format_code='txt', model='velocity', file_txt='فشل طلب تحديث UIN', module_id='10006', module_name='خدمات المقيمين', template_typ_code='RS_UIN_UPDATE_FAILURE_EMAIL_SUB', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1209' AND lang_code='ara';
     UPDATE master.template
     SET "name"='Échec de la demande de mise à jour de l''UIN', descr='Échec de la demande de mise à jour de l''UIN', file_format_code='txt', model='velocity', file_txt='Échec de la demande de mise à jour UIN', module_id='10006', module_name='Resident Services', template_typ_code='RS_UIN_UPDATE_FAILURE_EMAIL_SUB', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1209' AND lang_code='fra';
     UPDATE master.template
     SET "name"='UIN Update Request Failed Email Subject', descr='UIN Update Request Failed Email Subject', file_format_code='txt', model='velocity', file_txt='UIN Update Request Failed', module_id='10006', module_name='Resident Services', template_typ_code='RS_UIN_UPDATE_FAILURE_EMAIL_SUB', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1209' AND lang_code='eng';
     UPDATE master.template
     SET "name"='Echec de la demande de mise à jour UIN SMS', descr='Echec de la demande de mise à jour UIN SMS', file_format_code='txt', model='velocity', file_txt='Bonjour $fullName_fra, Nous n''avons pas pu traiter votre demande de «mise à jour UIN». Veuillez réessayer plus tard. Merci!', module_id='10006', module_name='Resident Services', template_typ_code='RS_UIN_UPDATE_FAILURE_SMS', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1210' AND lang_code='fra';
     UPDATE master.template
     SET "name"='UIN Update Request Failed SMS', descr='UIN Update Request Failed SMS', file_format_code='txt', model='velocity', file_txt='Hi $fullName_eng, We were unable to process your UIN Update request. Please try again later. Thank You!', module_id='10006', module_name='Resident Services', template_typ_code='RS_UIN_UPDATE_FAILURE_SMS', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1210' AND lang_code='eng';
     UPDATE master.template
     SET "name"='فشل طلب تحديث UIN عبر الرسائل القصيرة', descr='فشل طلب تحديث UIN عبر الرسائل القصيرة', file_format_code='txt', model='velocity', file_txt='مرحبًا $ fullName_eng ، لم نتمكن من معالجة طلب تحديث UIN الخاص بك. الرجاء معاودة المحاولة في وقت لاحق. شكرا لكم!', module_id='10006', module_name='خدمات المقيمين', template_typ_code='RS_UIN_UPDATE_FAILURE_SMS', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1210' AND lang_code='ara';
     UPDATE master.template
     SET "name"='الرسائل القصيرة الناجحة لإصدار الاعتماد', descr='الرسائل القصيرة الناجحة لإصدار الاعتماد', file_format_code='txt', model='velocity', file_txt='مرحبًا $! fullName ، لقد تلقينا طلبًا للحصول على $! creditName من $! partnerName. معرف الطلب لنفسه هو $! RID ومفتاح التشفير الخاص بك هو $! encryptionKey. هذا الطلب قيد المعالجة. شكرا لكم', module_id='10006', module_name='خدمات المقيمين', template_typ_code='RS_CRE_REQ_SUCCESS_SMS', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1232' AND lang_code='ara';
     UPDATE master.template
     SET "name"='Credential Issuance Success SMS', descr='Credential Issuance Success SMS', file_format_code='txt', model='velocity', file_txt='Bonjour $!fullName, Nous avons reçu une demande de $!credentialName de $!partnerName. L''identifiant de la demande est $!RID et votre clé de chiffrement est $!encryptionKey. Cette demande est en cours de traitement. Merci', module_id='10006', module_name='Resident Services', template_typ_code='RS_CRE_REQ_SUCCESS_SMS', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1232' AND lang_code='fra';
     UPDATE master.template
     SET "name"='Credential Issuance Success SMS', descr='Credential Issuance Success SMS', file_format_code='txt', model='velocity', file_txt='Hi $!fullName, We have received a request for $!credentialName from $!partnerName. The request id for the same is $!RID and your encryption key is $!encryptionKey. This request is under processing. Thank You', module_id='10006', module_name='Resident Services', template_typ_code='RS_CRE_REQ_SUCCESS_SMS', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1232' AND lang_code='eng';
     UPDATE master.template
     SET "name"='Credential Issuance Success EMAIL', descr='Credential Issuance Success EMAIL', file_format_code='txt', model='velocity', file_txt='Hi $!fullName, We have received a request for $!credentialName from $!partnerName. The request id for the same is $!RID and your encryption key is $!encryptionKey. This request is under processing. Thank You', module_id='10006', module_name='Resident Services', template_typ_code='RS_CRE_REQ_SUCCESS_EMAIL', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1233' AND lang_code='eng';
     UPDATE master.template
     SET "name"='Credential Issuance Success EMAIL', descr='Credential Issuance Success EMAIL', file_format_code='txt', model='velocity', file_txt='Bonjour $!fullName, Nous avons reçu une demande de $!credentialName de $!partnerName. L''identifiant de la demande est $!RID et votre clé de chiffrement est $!encryptionKey. Cette demande est en cours de traitement. Merci', module_id='10006', module_name='Resident Services', template_typ_code='RS_CRE_REQ_SUCCESS_EMAIL', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1233' AND lang_code='fra';
     UPDATE master.template
     SET "name"='نجاح إصدار بيانات الاعتماد EMAIL', descr='نجاح إصدار بيانات الاعتماد EMAIL', file_format_code='txt', model='velocity', file_txt='مرحبًا $! fullName ، لقد تلقينا طلبًا للحصول على $! creditName من $! partnerName. معرف الطلب لنفسه هو $! RID ومفتاح التشفير الخاص بك هو $! encryptionKey. هذا الطلب قيد المعالجة. شكرا لكم', module_id='10006', module_name='خدمات المقيمين', template_typ_code='RS_CRE_REQ_SUCCESS_EMAIL', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1233' AND lang_code='ara';
     UPDATE master.template
     SET "name"='Credential Issuance Success EMAIL Subject', descr='Credential Issuance Success EMAIL Subject', file_format_code='txt', model='velocity', file_txt='Confirmation de la délivrance des informations d''identification', module_id='10006', module_name='Resident Services', template_typ_code='RS_CRE_REQ_SUCCESS_EMAIL_SUB', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1234' AND lang_code='fra';
     UPDATE master.template
     SET "name"='Credential Issuance Success EMAIL Subject', descr='Credential Issuance Success EMAIL Subject', file_format_code='txt', model='velocity', file_txt='Credential Issuance Confirmation', module_id='10006', module_name='Resident Services', template_typ_code='RS_CRE_REQ_SUCCESS_EMAIL_SUB', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1234' AND lang_code='eng';
     UPDATE master.template
     SET "name"='موضوع EMAIL بنجاح إصدار بيانات الاعتماد', descr='موضوع EMAIL بنجاح إصدار بيانات الاعتماد', file_format_code='txt', model='velocity', file_txt='تأكيد إصدار الاعتماد', module_id='10006', module_name='خدمات المقيمين', template_typ_code='RS_CRE_REQ_SUCCESS_EMAIL_SUB', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1234' AND lang_code='ara';
     UPDATE master.template
     SET "name"='Credential Issuance Status Check SMS', descr='Credential Issuance Status Check SMS', file_format_code='txt', model='velocity', file_txt='Hi $!fullName, The status of your request to issue credentials against request ID $!RID is $!status. Thank You', module_id='10006', module_name='Resident Services', template_typ_code='RS_CRE_STATUS_SMS', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1235' AND lang_code='eng';
     UPDATE master.template
     SET "name"='التحقق من حالة إصدار الاعتماد SMS', descr='التحقق من حالة إصدار الاعتماد SMS', file_format_code='txt', model='velocity', file_txt='مرحبًا $! fullName ، حالة طلبك لإصدار بيانات الاعتماد مقابل معرّف الطلب $! RID هي حالة $!. شكرا لكم', module_id='10006', module_name='خدمات المقيمين', template_typ_code='RS_CRE_STATUS_SMS', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1235' AND lang_code='ara';
     UPDATE master.template
     SET "name"='Credential Issuance Status Check SMS', descr='Credential Issuance Status Check SMS', file_format_code='txt', model='velocity', file_txt='Bonjour $!fullName, L''état de votre demande d''émission d''informations d''identification par rapport à l''ID de demande $!RID est $! status. Merci', module_id='10006', module_name='Resident Services', template_typ_code='RS_CRE_STATUS_SMS', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1235' AND lang_code='fra';
     UPDATE master.template
     SET "name"='Credential Issuance Status Check EMAIL', descr='Credential Issuance Status Check EMAIL', file_format_code='txt', model='velocity', file_txt='Hi $!fullName, The status of your request to issue credentials against request ID $!RID is $!status. Thank You', module_id='10006', module_name='Resident Services', template_typ_code='RS_CRE_STATUS_EMAIL', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1236' AND lang_code='eng';
     UPDATE master.template
     SET "name"='Credential Issuance Status Check EMAIL', descr='Credential Issuance Status Check EMAIL', file_format_code='txt', model='velocity', file_txt='Bonjour $!fullName, L''état de votre demande d''émission d''informations d''identification par rapport à l''ID de demande $!RID est $! status. Merci', module_id='10006', module_name='Resident Services', template_typ_code='RS_CRE_STATUS_EMAIL', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1236' AND lang_code='fra';
     UPDATE master.template
     SET "name"='التحقق من حالة إصدار الاعتماد EMAIL', descr='التحقق من حالة إصدار الاعتماد EMAIL', file_format_code='txt', model='velocity', file_txt='مرحبًا $! fullName ، حالة طلبك لإصدار بيانات الاعتماد مقابل معرّف الطلب $! RID هي حالة $!. شكرا لكم', module_id='10006', module_name='خدمات المقيمين', template_typ_code='RS_CRE_STATUS_EMAIL', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1236' AND lang_code='ara';
     UPDATE master.template
     SET "name"='التحقق من حالة إصدار الاعتماد EMAIL الموضوع', descr='التحقق من حالة إصدار الاعتماد EMAIL الموضوع', file_format_code='txt', model='velocity', file_txt='حالة إصدار الاعتماد', module_id='10006', module_name='خدمات المقيمين', template_typ_code='RS_CRE_STATUS_EMAIL_SUB', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1237' AND lang_code='ara';
     UPDATE master.template
     SET "name"='Credential Issuance Status Check EMAIL Subject', descr='Credential Issuance Status Check EMAIL Subject', file_format_code='txt', model='velocity', file_txt='État de délivrance des informations d''identification', module_id='10006', module_name='Resident Services', template_typ_code='RS_CRE_STATUS_EMAIL_SUB', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1237' AND lang_code='fra';
     UPDATE master.template
     SET "name"='Credential Issuance Status Check EMAIL Subject', descr='Credential Issuance Status Check EMAIL Subject', file_format_code='txt', model='velocity', file_txt='Credential Issuance Status', module_id='10006', module_name='Resident Services', template_typ_code='RS_CRE_STATUS_EMAIL_SUB', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1237' AND lang_code='eng';
     UPDATE master.template
     SET "name"='طلب الاعتماد إلغاء الرسائل القصيرة الناجحة', descr='طلب الاعتماد إلغاء الرسائل القصيرة الناجحة', file_format_code='txt', model='velocity', file_txt='مرحبًا $! fullName ، طلب الاعتماد الخاص بك مع معرف الطلب $! تم إلغاء RID بنجاح. شكرا لكم', module_id='10006', module_name='خدمات المقيمين', template_typ_code='RS_CRE_CANCEL_SUCCESS_SMS', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1238' AND lang_code='ara';
     UPDATE master.template
     SET "name"='Credential Request Cancel Success SMS', descr='Credential Request Cancel Success SMS', file_format_code='txt', model='velocity', file_txt='Salut $!fullName, Votre demande d''informations d''identification avec l''ID de demande $!RID a été annulée avec succès. Merci', module_id='10006', module_name='Resident Services', template_typ_code='RS_CRE_CANCEL_SUCCESS_SMS', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1238' AND lang_code='fra';
     UPDATE master.template
     SET "name"='Credential Request Cancel Success SMS', descr='Credential Request Cancel Success SMS', file_format_code='txt', model='velocity', file_txt='Hi $!fullName, Your credential request with request id $!RID has been successfully cancelled. Thank You', module_id='10006', module_name='Resident Services', template_typ_code='RS_CRE_CANCEL_SUCCESS_SMS', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1238' AND lang_code='eng';
     UPDATE master.template
     SET "name"='طلب الاعتماد إلغاء النجاح EMAIL', descr='طلب الاعتماد إلغاء النجاح EMAIL', file_format_code='txt', model='velocity', file_txt='مرحبًا $! fullName ، تم بنجاح إلغاء طلب الاعتماد الخاص بك مع معرف الطلب $ RID. شكرا لكم', module_id='10006', module_name='خدمات المقيمين', template_typ_code='RS_CRE_CANCEL_SUCCESS_EMAIL', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1239' AND lang_code='ara';
     UPDATE master.template
     SET "name"='Credential Request Cancel Success EMAIL', descr='Credential Request Cancel Success EMAIL', file_format_code='txt', model='velocity', file_txt='Hi $!fullName, Your credential request with request id $RID has been successfully cancelled. Thank You', module_id='10006', module_name='Resident Services', template_typ_code='RS_CRE_CANCEL_SUCCESS_EMAIL', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1239' AND lang_code='eng';
     UPDATE master.template
     SET "name"='Credential Request Cancel Success EMAIL', descr='Credential Request Cancel Success EMAIL', file_format_code='txt', model='velocity', file_txt='Salut $!fullName, Votre demande d''informations d''identification avec l''ID de demande $!RID a été annulée avec succès. Merci', module_id='10006', module_name='Resident Services', template_typ_code='RS_CRE_CANCEL_SUCCESS_EMAIL', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1239' AND lang_code='fra';
     UPDATE master.template
     SET "name"='طلب اعتماد إلغاء بنجاح موضوع EMAIL', descr='طلب اعتماد إلغاء بنجاح موضوع EMAIL', file_format_code='txt', model='velocity', file_txt='تم إلغاء طلب الاعتماد بنجاح', module_id='10006', module_name='خدمات المقيمين', template_typ_code='RS_CRE_CANCEL_SUCCESS_EMAIL_SUB', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1240' AND lang_code='ara';
     UPDATE master.template
     SET "name"='Credential Request Cancel Success EMAIL Subject', descr='Credential Request Cancel Success EMAIL Subject', file_format_code='txt', model='velocity', file_txt='La demande d''informations d''identification est annulée avec succès', module_id='10006', module_name='Resident Services', template_typ_code='RS_CRE_CANCEL_SUCCESS_EMAIL_SUB', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1240' AND lang_code='fra';
     UPDATE master.template
     SET "name"='Credential Request Cancel Success EMAIL Subject', descr='Credential Request Cancel Success EMAIL Subject', file_format_code='txt', model='velocity', file_txt='Credential Request is cancelled successfully', module_id='10006', module_name='Resident Services', template_typ_code='RS_CRE_CANCEL_SUCCESS_EMAIL_SUB', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1240' AND lang_code='eng';
     UPDATE master.template
     SET "name"='رسالة فشل في إصدار بيانات الاعتماد', descr='رسالة فشل في إصدار بيانات الاعتماد', file_format_code='txt', model='velocity', file_txt='مرحبًا $! fullName ، لقد تلقينا طلبًا للحصول على $! creditName من $! partnerName. معرف الطلب لنفسه هو $! RID. لا يمكن معالجة الطلب. الرجاء معاودة المحاولة في وقت لاحق. شكرا لكم', module_id='10006', module_name='خدمات المقيمين', template_typ_code='RS_CRE_REQ_FAILURE_SMS', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1241' AND lang_code='ara';
     UPDATE master.template
     SET "name"='Credential Issuance Failure SMS', descr='Credential Issuance Failure SMS', file_format_code='txt', model='velocity', file_txt='Bonjour $!fullName, Nous avons reçu une demande de $!credentialName de $!partnerName. L''identifiant de demande pour le même est $!RID. La demande n''a pas pu être traitée. Veuillez réessayer plus tard. Merci', module_id='10006', module_name='Resident Services', template_typ_code='RS_CRE_REQ_FAILURE_SMS', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1241' AND lang_code='fra';
     UPDATE master.template
     SET "name"='Credential Issuance Failure SMS', descr='Credential Issuance Failure SMS', file_format_code='txt', model='velocity', file_txt='Hi $!fullName, We have received a request for $!credentialName from $!partnerName. The request id for the same is $!RID. The request could not be processed. Please try again later. Thank You', module_id='10006', module_name='Resident Services', template_typ_code='RS_CRE_REQ_FAILURE_SMS', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1241' AND lang_code='eng';
     UPDATE master.template
     SET "name"='فشل إصدار بيانات الاعتماد EMAIL', descr='فشل إصدار بيانات الاعتماد EMAIL', file_format_code='txt', model='velocity', file_txt='مرحبًا $! fullName ، لقد تلقينا طلبًا للحصول على $! creditName من $! partnerName. معرف الطلب لنفسه هو $! RID. لا يمكن معالجة الطلب. الرجاء معاودة المحاولة في وقت لاحق. شكرا لكم', module_id='10006', module_name='خدمات المقيمين', template_typ_code='RS_CRE_REQ_FAILURE_EMAIL', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1242' AND lang_code='ara';
     UPDATE master.template
     SET "name"='Credential Issuance Failure EMAIL', descr='Credential Issuance Failure EMAIL', file_format_code='txt', model='velocity', file_txt='Bonjour $!fullName, Nous avons reçu une demande de $!credentialName de $!partnerName. L''identifiant de demande pour le même est $!RID. La demande n''a pas pu être traitée. Veuillez réessayer plus tard. Merci', module_id='10006', module_name='Resident Services', template_typ_code='RS_CRE_REQ_FAILURE_EMAIL', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1242' AND lang_code='fra';
     UPDATE master.template
     SET "name"='Credential Issuance Failure EMAIL', descr='Credential Issuance Failure EMAIL', file_format_code='txt', model='velocity', file_txt='Hi $!fullName, We have received a request for $!credentialName from $!partnerName. The request id for the same is $!RID. The request could not be processed. Please try again later. Thank You', module_id='10006', module_name='Resident Services', template_typ_code='RS_CRE_REQ_FAILURE_EMAIL', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1242' AND lang_code='eng';
     UPDATE master.template
     SET "name"='Credential Issuance Failure EMAIL Subject', descr='Credential Issuance Failure EMAIL Subject', file_format_code='txt', model='velocity', file_txt='Credential Issuance Failed', module_id='10006', module_name='Resident Services', template_typ_code='RS_CRE_REQ_FAILURE_EMAIL_SUB', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1243' AND lang_code='eng';
     UPDATE master.template
     SET "name"='Credential Issuance Failure EMAIL Subject', descr='Credential Issuance Failure EMAIL Subject', file_format_code='txt', model='velocity', file_txt='Échec de l''émission des informations d''identification', module_id='10006', module_name='Resident Services', template_typ_code='RS_CRE_REQ_FAILURE_EMAIL_SUB', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1243' AND lang_code='fra';
     UPDATE master.template
     SET "name"='موضوع EMAIL لإصدار بيانات الاعتماد', descr='موضوع EMAIL لإصدار بيانات الاعتماد', file_format_code='txt', model='velocity', file_txt='فشل إصدار بيانات الاعتماد', module_id='10006', module_name='خدمات المقيمين', template_typ_code='RS_CRE_REQ_FAILURE_EMAIL_SUB', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1243' AND lang_code='ara';
     UPDATE master.template
     SET "name"='Request received email subject to customize and download my card', descr='Request received email subject to customize and download my card', file_format_code='txt', model='velocity', file_txt='Accusé de réception : $eventDetails | ID de l''événement : $eventId | Statut : $status', module_id='10006', module_name='Resident Services', template_typ_code='cust-and-down-my-card-request-received-email-subject', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1301' AND lang_code='fra';
     UPDATE master.template
     SET "name"='Request received email subject to customize and download my card', descr='Request received email subject to customize and download my card', file_format_code='txt', model='velocity', file_txt='Acknowledgement: $eventDetails | event ID: $eventId | Status: $status', module_id='10006', module_name='Resident Services', template_typ_code='cust-and-down-my-card-request-received-email-subject', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1301' AND lang_code='eng';
     UPDATE master.template
     SET "name"='Request received email subject to customize and download my card', descr='Request received email subject to customize and download my card', file_format_code='txt', model='velocity', file_txt='اعتراف: $eventDetails | معرف الحدث: $eventId | الحالة: $status', module_id='10006', module_name='Resident Services', template_typ_code='cust-and-down-my-card-request-received-email-subject', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1301' AND lang_code='ara';
     UPDATE master.template
     SET "name"='Success email subject to customize and download my card', descr='Success email subject to customize and download my card', file_format_code='txt', model='velocity', file_txt='Accusé de réception : $eventDetails | ID de l''événement : $eventId | Statut : $status', module_id='10006', module_name='Resident Services', template_typ_code='cust-and-down-my-card-success-email-subject', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1302' AND lang_code='fra';
     UPDATE master.template
     SET "name"='Success email subject to customize and download my card', descr='Success email subject to customize and download my card', file_format_code='txt', model='velocity', file_txt='اعتراف: $eventDetails | معرف الحدث: $eventId | الحالة: $status', module_id='10006', module_name='Resident Services', template_typ_code='cust-and-down-my-card-success-email-subject', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1302' AND lang_code='ara';
     UPDATE master.template
     SET "name"='Success email subject to customize and download my card', descr='Success email subject to customize and download my card', file_format_code='txt', model='velocity', file_txt='Acknowledgement: $eventDetails | event ID: $eventId | Status: $status', module_id='10006', module_name='Resident Services', template_typ_code='cust-and-down-my-card-success-email-subject', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1302' AND lang_code='eng';
     UPDATE master.template
     SET "name"='Failure email subject to customize and download my card', descr='Failure email subject to customize and download my card', file_format_code='txt', model='velocity', file_txt='اعتراف: $eventDetails | معرف الحدث: $eventId | الحالة: $status', module_id='10006', module_name='Resident Services', template_typ_code='cust-and-down-my-card-failure-email-subject', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1303' AND lang_code='ara';
     UPDATE master.template
     SET "name"='Failure email subject to customize and download my card', descr='Failure email subject to customize and download my card', file_format_code='txt', model='velocity', file_txt='Accusé de réception : $eventDetails | ID de l''événement : $eventId | Statut : $status', module_id='10006', module_name='Resident Services', template_typ_code='cust-and-down-my-card-failure-email-subject', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1303' AND lang_code='fra';
     UPDATE master.template
     SET "name"='Failure email subject to customize and download my card', descr='Failure email subject to customize and download my card', file_format_code='txt', model='velocity', file_txt='Acknowledgement: $eventDetails | event ID: $eventId | Status: $status', module_id='10006', module_name='Resident Services', template_typ_code='cust-and-down-my-card-failure-email-subject', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1303' AND lang_code='eng';
     UPDATE master.template
     SET "name"='Request received email to customize and download my card', descr='Request received email to customize and download my card', file_format_code='txt', model='velocity', file_txt='Cher $name, <br> Votre demande de $eventDetails a été reçue le $date à $time. <br> Votre identifiant d''événement est #$eventId. <br> Connectez-vous sur le site officiel $trackServiceRequestLink pour plus de détails. <br>', module_id='10006', module_name='Resident Services', template_typ_code='cust-and-down-my-card-request-received-email-content', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1304' AND lang_code='fra';
     UPDATE master.template
     SET "name"='Request received email to customize and download my card', descr='Request received email to customize and download my card', file_format_code='txt', model='velocity', file_txt='Dear $name, <br>
      Your request to $eventDetails has been received on $date at $time. <br>
      Your event id is #$eventId. <br>
      Log in to the official website $trackServiceRequestLink for further details. <br>', module_id='10006', module_name='Resident Services', template_typ_code='cust-and-down-my-card-request-received-email-content', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1304' AND lang_code='eng';
     UPDATE master.template
     SET "name"='Request received email to customize and download my card', descr='Request received email to customize and download my card', file_format_code='txt', model='velocity', file_txt='عزيزي $name، <br> تم استلام طلبك لـ $eventDetails في $date في $time. <br> هوية الحدث الخاصة بك هي #$eventId. <br> قم بتسجيل الدخول إلى الموقع الرسمي $trackServiceRequestLink لمزيد من التفاصيل. <br>', module_id='10006', module_name='Resident Services', template_typ_code='cust-and-down-my-card-request-received-email-content', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1304' AND lang_code='ara';
     UPDATE master.template
     SET "name"='Success email to customize and download my card', descr='Success email to customize and download my card', file_format_code='txt', model='velocity', file_txt='Dear $name, <br>
      Your request to $eventDetails is completed successfully on $date at $time. <br>
      Your event id is #$eventId. <br>
      Log in to the official website $trackServiceRequestLink for further details. <br>', module_id='10006', module_name='Resident Services', template_typ_code='cust-and-down-my-card-success-email-content', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1305' AND lang_code='eng';
     UPDATE master.template
     SET "name"='Success email to customize and download my card', descr='Success email to customize and download my card', file_format_code='txt', model='velocity', file_txt='عزيزي $name، <br> تم إتمام طلبك لـ $eventDetails بنجاح في $date في $time. <br> هوية الحدث الخاصة بك هي #$eventId. <br> قم بتسجيل الدخول إلى الموقع الرسمي $trackServiceRequestLink لمزيد من التفاصيل. <br>', module_id='10006', module_name='Resident Services', template_typ_code='cust-and-down-my-card-success-email-content', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1305' AND lang_code='ara';
     UPDATE master.template
     SET "name"='Success email to customize and download my card', descr='Success email to customize and download my card', file_format_code='txt', model='velocity', file_txt='Cher $name, <br> Votre demande de $eventDetails a été réalisée avec succès le $date à $time. <br> Votre identifiant d''événement est #$eventId. <br> Connectez-vous sur le site officiel $trackServiceRequestLink pour plus de détails. <br>', module_id='10006', module_name='Resident Services', template_typ_code='cust-and-down-my-card-success-email-content', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1305' AND lang_code='fra';
     UPDATE master.template
     SET "name"='Failure email to customize and download my card', descr='Failure email to customize and download my card', file_format_code='txt', model='velocity', file_txt='Dear $name, <br>
      Your request to $eventDetails raised on $date at $time has failed. <br>
      Your event id is #$eventId. <br>
      Log in to the official website $trackServiceRequestLink for further details. <br>', module_id='10006', module_name='Resident Services', template_typ_code='cust-and-down-my-card-failure-email-content', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1306' AND lang_code='eng';
     UPDATE master.template
     SET "name"='Failure email to customize and download my card', descr='Failure email to customize and download my card', file_format_code='txt', model='velocity', file_txt='عزيزي $name، <br> فشل طلبك لـ $eventDetails الذي تم رفعه في $date في $time. <br> هوية الحدث الخاصة بك هي #$eventId. <br> قم بتسجيل الدخول إلى الموقع الرسمي $trackServiceRequestLink لمزيد من التفاصيل. <br>', module_id='10006', module_name='Resident Services', template_typ_code='cust-and-down-my-card-failure-email-content', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1306' AND lang_code='ara';
     UPDATE master.template
     SET "name"='Failure email to customize and download my card', descr='Failure email to customize and download my card', file_format_code='txt', model='velocity', file_txt='Cher $name, <br> Votre demande de $eventDetails émise le $date à $time a échoué. <br> Votre identifiant d''événement est #$eventId. <br> Connectez-vous sur le site officiel $trackServiceRequestLink pour plus de détails. <br>', module_id='10006', module_name='Resident Services', template_typ_code='cust-and-down-my-card-failure-email-content', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1306' AND lang_code='fra';
     UPDATE master.template
     SET "name"='Request received email subject to order a physical card', descr='Request received email subject to order a physical card', file_format_code='txt', model='velocity', file_txt='اعتراف: $eventDetails | معرف الحدث: $eventId | الحالة: $status', module_id='10006', module_name='Resident Services', template_typ_code='order-a-physical-card-request-received-email-subject', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1307' AND lang_code='ara';
     UPDATE master.template
     SET "name"='Request received email subject to order a physical card', descr='Request received email subject to order a physical card', file_format_code='txt', model='velocity', file_txt='Acknowledgement: $eventDetails | event ID: $eventId | Status: $status', module_id='10006', module_name='Resident Services', template_typ_code='order-a-physical-card-request-received-email-subject', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1307' AND lang_code='eng';
     UPDATE master.template
     SET "name"='Request received email subject to order a physical card', descr='Request received email subject to order a physical card', file_format_code='txt', model='velocity', file_txt='Accusé de réception : $eventDetails | ID de l''événement : $eventId | Statut : $status', module_id='10006', module_name='Resident Services', template_typ_code='order-a-physical-card-request-received-email-subject', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1307' AND lang_code='fra';
     UPDATE master.template
     SET "name"='Success email subject to order a physical card', descr='Success email subject to order a physical card', file_format_code='txt', model='velocity', file_txt='Accusé de réception : $eventDetails | ID de l''événement : $eventId | Statut : $status', module_id='10006', module_name='Resident Services', template_typ_code='order-a-physical-card-success-email-subject', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1308' AND lang_code='fra';
     UPDATE master.template
     SET "name"='Success email subject to order a physical card', descr='Success email subject to order a physical card', file_format_code='txt', model='velocity', file_txt='Acknowledgement: $eventDetails | event ID: $eventId | Status: $status', module_id='10006', module_name='Resident Services', template_typ_code='order-a-physical-card-success-email-subject', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1308' AND lang_code='eng';
     UPDATE master.template
     SET "name"='Success email subject to order a physical card', descr='Success email subject to order a physical card', file_format_code='txt', model='velocity', file_txt='اعتراف: $eventDetails | معرف الحدث: $eventId | الحالة: $status', module_id='10006', module_name='Resident Services', template_typ_code='order-a-physical-card-success-email-subject', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1308' AND lang_code='ara';
     UPDATE master.template
     SET "name"='Failure email subject to order a physical card', descr='Failure email subject to order a physical card', file_format_code='txt', model='velocity', file_txt='Accusé de réception : $eventDetails | ID de l''événement : $eventId | Statut : $status', module_id='10006', module_name='Resident Services', template_typ_code='order-a-physical-card-failure-email-subject', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1309' AND lang_code='fra';
     UPDATE master.template
     SET "name"='Failure email subject to order a physical card', descr='Failure email subject to order a physical card', file_format_code='txt', model='velocity', file_txt='اعتراف: $eventDetails | معرف الحدث: $eventId | الحالة: $status', module_id='10006', module_name='Resident Services', template_typ_code='order-a-physical-card-failure-email-subject', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1309' AND lang_code='ara';
     UPDATE master.template
     SET "name"='Failure email subject to order a physical card', descr='Failure email subject to order a physical card', file_format_code='txt', model='velocity', file_txt='Acknowledgement: $eventDetails | event ID: $eventId | Status: $status', module_id='10006', module_name='Resident Services', template_typ_code='order-a-physical-card-failure-email-subject', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1309' AND lang_code='eng';
     UPDATE master.template
     SET "name"='Request received email to order a physical card', descr='Request received email to order a physical card', file_format_code='txt', model='velocity', file_txt='Dear $name, <br>
      Your request to $eventDetails has been received on $date at $time. <br>
      Your event id is #$eventId. <br>
      Log in to the official website $trackServiceRequestLink for further details. <br>', module_id='10006', module_name='Resident Services', template_typ_code='order-a-physical-card-request-received-email-content', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1310' AND lang_code='eng';
     UPDATE master.template
     SET "name"='Request received email to order a physical card', descr='Request received email to order a physical card', file_format_code='txt', model='velocity', file_txt='عزيزي $name، <br> تم استلام طلبك لـ $eventDetails في $date في $time. <br> هوية الحدث الخاصة بك هي #$eventId. <br> قم بتسجيل الدخول إلى الموقع الرسمي $trackServiceRequestLink لمزيد من التفاصيل. <br>', module_id='10006', module_name='Resident Services', template_typ_code='order-a-physical-card-request-received-email-content', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1310' AND lang_code='ara';
     UPDATE master.template
     SET "name"='Request received email to order a physical card', descr='Request received email to order a physical card', file_format_code='txt', model='velocity', file_txt='Cher $name, <br> Votre demande de $eventDetails a été reçue le $date à $time. <br> Votre identifiant d''événement est #$eventId. <br> Connectez-vous sur le site officiel $trackServiceRequestLink pour plus de détails. <br>', module_id='10006', module_name='Resident Services', template_typ_code='order-a-physical-card-request-received-email-content', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1310' AND lang_code='fra';
     UPDATE master.template
     SET "name"='Success email to order a physical card', descr='Success email to order a physical card', file_format_code='txt', model='velocity', file_txt='Dear $name, <br>
      Your request to $eventDetails is completed successfully on $date at $time. <br>
      Your event id is #$eventId. <br>
      Log in to the official website $trackServiceRequestLink for further details. <br>
      You can track the status of the transaction using the transaction ID $transactionID on the link: $trackingLink', module_id='10006', module_name='Resident Services', template_typ_code='order-a-physical-card-success-email-content', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1311' AND lang_code='eng';
     UPDATE master.template
     SET "name"='Success email to order a physical card', descr='Success email to order a physical card', file_format_code='txt', model='velocity', file_txt='Cher $name, <br>
     Votre demande pour $eventDetails a été réalisée avec succès le $date à $time. <br>
     Votre numéro d''événement est #$eventId. <br>
     Connectez-vous sur le site officiel $trackServiceRequestLink pour plus de détails. <br>
     Vous pouvez suivre l''état de la transaction en utilisant l''ID de transaction $transactionID sur le lien : $trackingLink', module_id='10006', module_name='Resident Services', template_typ_code='order-a-physical-card-success-email-content', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1311' AND lang_code='fra';
     UPDATE master.template
     SET "name"='Success email to order a physical card', descr='Success email to order a physical card', file_format_code='txt', model='velocity', file_txt='عزيزي $name، <br>
     تم إكمال طلبك لـ $eventDetails بنجاح في $date في $time. <br>
     رقم الحدث الخاص بك هو #$eventId. <br>
     تسجيل الدخول إلى الموقع الرسمي $trackServiceRequestLink للمزيد من التفاصيل. <br>
     يمكنك تتبع حالة العملية باستخدام معرف العملية $transactionID على الرابط: $trackingLink', module_id='10006', module_name='Resident Services', template_typ_code='order-a-physical-card-success-email-content', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1311' AND lang_code='ara';
     UPDATE master.template
     SET "name"='Failure email to order a physical card', descr='Failure email to order a physical card', file_format_code='txt', model='velocity', file_txt='عزيزي $name، <br> فشل طلبك لـ $eventDetails الذي تم رفعه في $date في $time. <br> هوية الحدث الخاصة بك هي #$eventId. <br> قم بتسجيل الدخول إلى الموقع الرسمي $trackServiceRequestLink لمزيد من التفاصيل. <br>', module_id='10006', module_name='Resident Services', template_typ_code='order-a-physical-card-failure-email-content', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1312' AND lang_code='ara';
     UPDATE master.template
     SET "name"='Failure email to order a physical card', descr='Failure email to order a physical card', file_format_code='txt', model='velocity', file_txt='Cher $name, <br> Votre demande de $eventDetails émise le $date à $time a échoué. <br> Votre identifiant d''événement est #$eventId. <br> Connectez-vous sur le site officiel $trackServiceRequestLink pour plus de détails. <br>', module_id='10006', module_name='Resident Services', template_typ_code='order-a-physical-card-failure-email-content', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1312' AND lang_code='fra';
     UPDATE master.template
     SET "name"='Failure email to order a physical card', descr='Failure email to order a physical card', file_format_code='txt', model='velocity', file_txt='Dear $name, <br>
      Your request to $eventDetails raised on $date at $time has failed. <br>
      Your event id is #$eventId. <br>
      Log in to the official website $trackServiceRequestLink for further details. <br>', module_id='10006', module_name='Resident Services', template_typ_code='order-a-physical-card-failure-email-content', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1312' AND lang_code='eng';
     UPDATE master.template
     SET "name"='Request received email subject to share my credential with a partner', descr='Request received email subject to share my credential with a partner', file_format_code='txt', model='velocity', file_txt='Acknowledgement: $eventDetails | event ID: $eventId | Status: $status', module_id='10006', module_name='Resident Services', template_typ_code='share-cred-with-partner-request-received-email-subject', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1313' AND lang_code='eng';
     UPDATE master.template
     SET "name"='Request received email subject to share my credential with a partner', descr='Request received email subject to share my credential with a partner', file_format_code='txt', model='velocity', file_txt='اعتراف: $eventDetails | معرف الحدث: $eventId | الحالة: $status', module_id='10006', module_name='Resident Services', template_typ_code='share-cred-with-partner-request-received-email-subject', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1313' AND lang_code='ara';
     UPDATE master.template
     SET "name"='Request received email subject to share my credential with a partner', descr='Request received email subject to share my credential with a partner', file_format_code='txt', model='velocity', file_txt='Accusé de réception : $eventDetails | ID de l''événement : $eventId | Statut : $status', module_id='10006', module_name='Resident Services', template_typ_code='share-cred-with-partner-request-received-email-subject', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1313' AND lang_code='fra';
     UPDATE master.template
     SET "name"='Success email subject to share my credential with a partner', descr='Success email subject to share my credential with a partner', file_format_code='txt', model='velocity', file_txt='Acknowledgement: $eventDetails | event ID: $eventId | Status: $status', module_id='10006', module_name='Resident Services', template_typ_code='share-cred-with-partner-success-email-subject', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1314' AND lang_code='eng';
     UPDATE master.template
     SET "name"='Success email subject to share my credential with a partner', descr='Success email subject to share my credential with a partner', file_format_code='txt', model='velocity', file_txt='Accusé de réception : $eventDetails | ID de l''événement : $eventId | Statut : $status', module_id='10006', module_name='Resident Services', template_typ_code='share-cred-with-partner-success-email-subject', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1314' AND lang_code='fra';
     UPDATE master.template
     SET "name"='Success email subject to share my credential with a partner', descr='Success email subject to share my credential with a partner', file_format_code='txt', model='velocity', file_txt='اعتراف: $eventDetails | معرف الحدث: $eventId | الحالة: $status', module_id='10006', module_name='Resident Services', template_typ_code='share-cred-with-partner-success-email-subject', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1314' AND lang_code='ara';
     UPDATE master.template
     SET "name"='Failure email subject to share my credential with a partner', descr='Failure email subject to share my credential with a partner', file_format_code='txt', model='velocity', file_txt='اعتراف: $eventDetails | معرف الحدث: $eventId | الحالة: $status', module_id='10006', module_name='Resident Services', template_typ_code='share-cred-with-partner-failure-email-subject', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1315' AND lang_code='ara';
     UPDATE master.template
     SET "name"='Failure email subject to share my credential with a partner', descr='Failure email subject to share my credential with a partner', file_format_code='txt', model='velocity', file_txt='Acknowledgement: $eventDetails | event ID: $eventId | Status: $status', module_id='10006', module_name='Resident Services', template_typ_code='share-cred-with-partner-failure-email-subject', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1315' AND lang_code='eng';
     UPDATE master.template
     SET "name"='Failure email subject to share my credential with a partner', descr='Failure email subject to share my credential with a partner', file_format_code='txt', model='velocity', file_txt='Accusé de réception : $eventDetails | ID de l''événement : $eventId | Statut : $status', module_id='10006', module_name='Resident Services', template_typ_code='share-cred-with-partner-failure-email-subject', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1315' AND lang_code='fra';
     UPDATE master.template
     SET "name"='Request received email to share my credential with a partner', descr='Request received email to share my credential with a partner', file_format_code='txt', model='velocity', file_txt='Cher $name, <br> Votre demande pour $eventDetails ($partner) a été reçue le $date à $time. <br> Votre numéro d''événement est #$eventId. <br> Connectez-vous sur le site officiel $trackServiceRequestLink pour plus de détails. <br>', module_id='10006', module_name='Resident Services', template_typ_code='share-cred-with-partner-request-received-email-content', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1316' AND lang_code='fra';
     UPDATE master.template
     SET "name"='Request received email to share my credential with a partner', descr='Request received email to share my credential with a partner', file_format_code='txt', model='velocity', file_txt='عزيزي $name، <br> تم استلام طلبك لـ $eventDetails ($partner) في $date في $time. <br> رقم الحدث الخاص بك هو #$eventId. <br> تسجيل الدخول إلى الموقع الرسمي $trackServiceRequestLink للمزيد من التفاصيل. <br>', module_id='10006', module_name='Resident Services', template_typ_code='share-cred-with-partner-request-received-email-content', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1316' AND lang_code='ara';
     UPDATE master.template
     SET "name"='Request received email to share my credential with a partner', descr='Request received email to share my credential with a partner', file_format_code='txt', model='velocity', file_txt='Dear $name, <br>
      Your request to $eventDetails ($partner) has been received on $date at $time. <br>
      Your event id is #$eventId. <br>
      Log in to the official website $trackServiceRequestLink for further details. <br>', module_id='10006', module_name='Resident Services', template_typ_code='share-cred-with-partner-request-received-email-content', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1316' AND lang_code='eng';
     UPDATE master.template
     SET "name"='Success email to share my credential with a partner', descr='Success email to share my credential with a partner', file_format_code='txt', model='velocity', file_txt='Dear $name, <br>
      Your request to $eventDetails ($partner) is completed successfully on $date at $time. <br>
      Your event id is #$eventId. <br>
      Log in to the official website $trackServiceRequestLink for further details. <br>', module_id='10006', module_name='Resident Services', template_typ_code='share-cred-with-partner-success-email-content', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1317' AND lang_code='eng';
     UPDATE master.template
     SET "name"='Success email to share my credential with a partner', descr='Success email to share my credential with a partner', file_format_code='txt', model='velocity', file_txt='Cher $name, <br> Votre demande pour $eventDetails ($partner) a été réalisée avec succès le $date à $time. <br> Votre numéro d''événement est #$eventId. <br> Connectez-vous sur le site officiel $trackServiceRequestLink pour plus de détails. <br>', module_id='10006', module_name='Resident Services', template_typ_code='share-cred-with-partner-success-email-content', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1317' AND lang_code='fra';
     UPDATE master.template
     SET "name"='Success email to share my credential with a partner', descr='Success email to share my credential with a partner', file_format_code='txt', model='velocity', file_txt='عزيزي $name، <br> تم إكمال طلبك لـ $eventDetails ($partner) بنجاح في $date في $time. <br> رقم الحدث الخاص بك هو #$eventId. <br> تسجيل الدخول إلى الموقع الرسمي $trackServiceRequestLink للمزيد من التفاصيل. <br>', module_id='10006', module_name='Resident Services', template_typ_code='share-cred-with-partner-success-email-content', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1317' AND lang_code='ara';
     UPDATE master.template
     SET "name"='Failure email to share my credential with a partner', descr='Failure email to share my credential with a partner', file_format_code='txt', model='velocity', file_txt='Cher $name, <br> Votre demande pour $eventDetails ($partner) émise le $date à $time a échoué. <br> Votre numéro d''événement est #$eventId. <br> Connectez-vous sur le site officiel $trackServiceRequestLink pour plus de détails. <br>', module_id='10006', module_name='Resident Services', template_typ_code='share-cred-with-partner-failure-email-content', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1318' AND lang_code='fra';
     UPDATE master.template
     SET "name"='Failure email to share my credential with a partner', descr='Failure email to share my credential with a partner', file_format_code='txt', model='velocity', file_txt='عزيزي $name، <br> تم رفع طلبك لـ $eventDetails ($partner) في $date في $time ولكنه فشل. <br> رقم الحدث الخاص بك هو #$eventId. <br> تسجيل الدخول إلى الموقع الرسمي $trackServiceRequestLink للمزيد من التفاصيل. <br>', module_id='10006', module_name='Resident Services', template_typ_code='share-cred-with-partner-failure-email-content', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1318' AND lang_code='ara';
     UPDATE master.template
     SET "name"='Failure email to share my credential with a partner', descr='Failure email to share my credential with a partner', file_format_code='txt', model='velocity', file_txt='Dear $name, <br>
      Your request to $eventDetails ($partner) raised on $date at $time has failed. <br>
      Your event id is #$eventId. <br>
      Log in to the official website $trackServiceRequestLink for further details. <br>', module_id='10006', module_name='Resident Services', template_typ_code='share-cred-with-partner-failure-email-content', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1318' AND lang_code='eng';
     UPDATE master.template
     SET "name"='Request received email subject to lock/unlock authentication', descr='Request received email subject to lock/unlock authentication', file_format_code='txt', model='velocity', file_txt='Acknowledgement: $eventDetails | event ID: $eventId | Status: $status', module_id='10006', module_name='Resident Services', template_typ_code='lock-unlock-auth-request-received-email-subject', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1319' AND lang_code='eng';
     UPDATE master.template
     SET "name"='Request received email subject to lock/unlock authentication', descr='Request received email subject to lock/unlock authentication', file_format_code='txt', model='velocity', file_txt='Accusé de réception : $eventDetails | ID de l''événement : $eventId | Statut : $status', module_id='10006', module_name='Resident Services', template_typ_code='lock-unlock-auth-request-received-email-subject', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1319' AND lang_code='fra';
     UPDATE master.template
     SET "name"='Request received email subject to lock/unlock authentication', descr='Request received email subject to lock/unlock authentication', file_format_code='txt', model='velocity', file_txt='اعتراف: $eventDetails | معرف الحدث: $eventId | الحالة: $status', module_id='10006', module_name='Resident Services', template_typ_code='lock-unlock-auth-request-received-email-subject', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1319' AND lang_code='ara';
     UPDATE master.template
     SET "name"='Success email subject to lock/unlock authentication', descr='Success email subject to lock/unlock authentication', file_format_code='txt', model='velocity', file_txt='اعتراف: $eventDetails | معرف الحدث: $eventId | الحالة: $status', module_id='10006', module_name='Resident Services', template_typ_code='lock-unlock-auth-success-email-subject', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1320' AND lang_code='ara';
     UPDATE master.template
     SET "name"='Success email subject to lock/unlock authentication', descr='Success email subject to lock/unlock authentication', file_format_code='txt', model='velocity', file_txt='Acknowledgement: $eventDetails | event ID: $eventId | Status: $status', module_id='10006', module_name='Resident Services', template_typ_code='lock-unlock-auth-success-email-subject', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1320' AND lang_code='eng';
     UPDATE master.template
     SET "name"='Success email subject to lock/unlock authentication', descr='Success email subject to lock/unlock authentication', file_format_code='txt', model='velocity', file_txt='Accusé de réception : $eventDetails | ID de l''événement : $eventId | Statut : $status', module_id='10006', module_name='Resident Services', template_typ_code='lock-unlock-auth-success-email-subject', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1320' AND lang_code='fra';
     UPDATE master.template
     SET "name"='Failure email subject to lock/unlock authentication', descr='Failure email subject to lock/unlock authentication', file_format_code='txt', model='velocity', file_txt='اعتراف: $eventDetails | معرف الحدث: $eventId | الحالة: $status', module_id='10006', module_name='Resident Services', template_typ_code='lock-unlock-auth-failure-email-subject', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1321' AND lang_code='ara';
     UPDATE master.template
     SET "name"='Failure email subject to lock/unlock authentication', descr='Failure email subject to lock/unlock authentication', file_format_code='txt', model='velocity', file_txt='Acknowledgement: $eventDetails | event ID: $eventId | Status: $status', module_id='10006', module_name='Resident Services', template_typ_code='lock-unlock-auth-failure-email-subject', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1321' AND lang_code='eng';
     UPDATE master.template
     SET "name"='Failure email subject to lock/unlock authentication', descr='Failure email subject to lock/unlock authentication', file_format_code='txt', model='velocity', file_txt='Accusé de réception : $eventDetails | ID de l''événement : $eventId | Statut : $status', module_id='10006', module_name='Resident Services', template_typ_code='lock-unlock-auth-failure-email-subject', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1321' AND lang_code='fra';
     UPDATE master.template
     SET "name"='Request received email to lock/unlock authentication', descr='Request received email to lock/unlock authentication', file_format_code='txt', model='velocity', file_txt='Cher $name, <br> Votre demande de $eventDetails a été reçue le $date à $time. <br> Votre identifiant d''événement est #$eventId. <br> Connectez-vous sur le site officiel $trackServiceRequestLink pour plus de détails. <br>', module_id='10006', module_name='Resident Services', template_typ_code='lock-unlock-auth-request-received-email-content', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1322' AND lang_code='fra';
     UPDATE master.template
     SET "name"='Request received email to lock/unlock authentication', descr='Request received email to lock/unlock authentication', file_format_code='txt', model='velocity', file_txt='Dear $name, <br>
      Your request to $eventDetails has been received on $date at $time. <br>
      Your event id is #$eventId. <br>
      Log in to the official website $trackServiceRequestLink for further details. <br>', module_id='10006', module_name='Resident Services', template_typ_code='lock-unlock-auth-request-received-email-content', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1322' AND lang_code='eng';
     UPDATE master.template
     SET "name"='Request received email to lock/unlock authentication', descr='Request received email to lock/unlock authentication', file_format_code='txt', model='velocity', file_txt='عزيزي $name، <br> تم استلام طلبك لـ $eventDetails في $date في $time. <br> هوية الحدث الخاصة بك هي #$eventId. <br> قم بتسجيل الدخول إلى الموقع الرسمي $trackServiceRequestLink لمزيد من التفاصيل. <br>', module_id='10006', module_name='Resident Services', template_typ_code='lock-unlock-auth-request-received-email-content', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1322' AND lang_code='ara';
     UPDATE master.template
     SET "name"='Success email to lock/unlock authentication', descr='Success email to lock/unlock authentication', file_format_code='txt', model='velocity', file_txt='Cher $name, <br> Votre demande de $eventDetails a été réalisée avec succès le $date à $time. <br> Votre identifiant d''événement est #$eventId. <br> Connectez-vous sur le site officiel $trackServiceRequestLink pour plus de détails. <br>', module_id='10006', module_name='Resident Services', template_typ_code='lock-unlock-auth-success-email-content', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1323' AND lang_code='fra';
     UPDATE master.template
     SET "name"='Success email to lock/unlock authentication', descr='Success email to lock/unlock authentication', file_format_code='txt', model='velocity', file_txt='عزيزي $name، <br> تم إتمام طلبك لـ $eventDetails بنجاح في $date في $time. <br> هوية الحدث الخاصة بك هي #$eventId. <br> قم بتسجيل الدخول إلى الموقع الرسمي $trackServiceRequestLink لمزيد من التفاصيل. <br>', module_id='10006', module_name='Resident Services', template_typ_code='lock-unlock-auth-success-email-content', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1323' AND lang_code='ara';
     UPDATE master.template
     SET "name"='Success email to lock/unlock authentication', descr='Success email to lock/unlock authentication', file_format_code='txt', model='velocity', file_txt='Dear $name, <br>
      Your request to $eventDetails is completed successfully on $date at $time. <br>
      Your event id is #$eventId. <br>
      Log in to the official website $trackServiceRequestLink for further details. <br>', module_id='10006', module_name='Resident Services', template_typ_code='lock-unlock-auth-success-email-content', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1323' AND lang_code='eng';
     UPDATE master.template
     SET "name"='Failure email to lock/unlock authentication', descr='Failure email to lock/unlock authentication', file_format_code='txt', model='velocity', file_txt='Dear $name, <br>
      Your request to $eventDetails raised on $date at $time has failed. <br>
      Your event id is #$eventId. <br>
      Log in to the official website $trackServiceRequestLink for further details. <br>', module_id='10006', module_name='Resident Services', template_typ_code='lock-unlock-auth-failure-email-content', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1324' AND lang_code='eng';
     UPDATE master.template
     SET "name"='Failure email to lock/unlock authentication', descr='Failure email to lock/unlock authentication', file_format_code='txt', model='velocity', file_txt='عزيزي $name، <br> فشل طلبك لـ $eventDetails الذي تم رفعه في $date في $time. <br> هوية الحدث الخاصة بك هي #$eventId. <br> قم بتسجيل الدخول إلى الموقع الرسمي $trackServiceRequestLink لمزيد من التفاصيل. <br>', module_id='10006', module_name='Resident Services', template_typ_code='lock-unlock-auth-failure-email-content', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1324' AND lang_code='ara';
     UPDATE master.template
     SET "name"='Failure email to lock/unlock authentication', descr='Failure email to lock/unlock authentication', file_format_code='txt', model='velocity', file_txt='Cher $name, <br> Votre demande de $eventDetails émise le $date à $time a échoué. <br> Votre identifiant d''événement est #$eventId. <br> Connectez-vous sur le site officiel $trackServiceRequestLink pour plus de détails. <br>', module_id='10006', module_name='Resident Services', template_typ_code='lock-unlock-auth-failure-email-content', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1324' AND lang_code='fra';
     UPDATE master.template
     SET "name"='Request received email subject to self update demographic data', descr='Request received email subject to self update demographic data', file_format_code='txt', model='velocity', file_txt='اعتراف: $eventDetails | معرف الحدث: $eventId | الحالة: $status', module_id='10006', module_name='Resident Services', template_typ_code='update-demo-data-request-received-email-subject', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1325' AND lang_code='ara';
     UPDATE master.template
     SET "name"='Request received email subject to self update demographic data', descr='Request received email subject to self update demographic data', file_format_code='txt', model='velocity', file_txt='Accusé de réception : $eventDetails | ID de l''événement : $eventId | Statut : $status', module_id='10006', module_name='Resident Services', template_typ_code='update-demo-data-request-received-email-subject', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1325' AND lang_code='fra';
     UPDATE master.template
     SET "name"='Request received email subject to self update demographic data', descr='Request received email subject to self update demographic data', file_format_code='txt', model='velocity', file_txt='Acknowledgement: $eventDetails | event ID: $eventId | Status: $status', module_id='10006', module_name='Resident Services', template_typ_code='update-demo-data-request-received-email-subject', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1325' AND lang_code='eng';
     UPDATE master.template
     SET "name"='Success email subject to self update demographic data', descr='Success email subject to self update demographic data', file_format_code='txt', model='velocity', file_txt='Acknowledgement: $eventDetails | event ID: $eventId | Status: $status', module_id='10006', module_name='Resident Services', template_typ_code='update-demo-data-success-email-subject', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1326' AND lang_code='eng';
     UPDATE master.template
     SET "name"='Success email subject to self update demographic data', descr='Success email subject to self update demographic data', file_format_code='txt', model='velocity', file_txt='اعتراف: $eventDetails | معرف الحدث: $eventId | الحالة: $status', module_id='10006', module_name='Resident Services', template_typ_code='update-demo-data-success-email-subject', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1326' AND lang_code='ara';
     UPDATE master.template
     SET "name"='Success email subject to self update demographic data', descr='Success email subject to self update demographic data', file_format_code='txt', model='velocity', file_txt='Accusé de réception : $eventDetails | ID de l''événement : $eventId | Statut : $status', module_id='10006', module_name='Resident Services', template_typ_code='update-demo-data-success-email-subject', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1326' AND lang_code='fra';
     UPDATE master.template
     SET "name"='Failure email subject to self update demographic data', descr='Failure email subject to self update demographic data', file_format_code='txt', model='velocity', file_txt='Accusé de réception : $eventDetails | ID de l''événement : $eventId | Statut : $status', module_id='10006', module_name='Resident Services', template_typ_code='update-demo-data-failure-email-subject', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1327' AND lang_code='fra';
     UPDATE master.template
     SET "name"='Failure email subject to self update demographic data', descr='Failure email subject to self update demographic data', file_format_code='txt', model='velocity', file_txt='اعتراف: $eventDetails | معرف الحدث: $eventId | الحالة: $status', module_id='10006', module_name='Resident Services', template_typ_code='update-demo-data-failure-email-subject', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1327' AND lang_code='ara';
     UPDATE master.template
     SET "name"='Failure email subject to self update demographic data', descr='Failure email subject to self update demographic data', file_format_code='txt', model='velocity', file_txt='Acknowledgement: $eventDetails | event ID: $eventId | Status: $status', module_id='10006', module_name='Resident Services', template_typ_code='update-demo-data-failure-email-subject', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1327' AND lang_code='eng';
     UPDATE master.template
     SET "name"='Request received email to self update demographic data', descr='Request received email to self update demographic data', file_format_code='txt', model='velocity', file_txt='عزيزي $name، <br> تم استلام طلبك لـ $eventDetails في $date في $time. <br> هوية الحدث الخاصة بك هي #$eventId. <br> قم بتسجيل الدخول إلى الموقع الرسمي $trackServiceRequestLink لمزيد من التفاصيل. <br>', module_id='10006', module_name='Resident Services', template_typ_code='update-demo-data-request-received-email-content', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1328' AND lang_code='ara';
     UPDATE master.template
     SET "name"='Request received email to self update demographic data', descr='Request received email to self update demographic data', file_format_code='txt', model='velocity', file_txt='Cher $name, <br> Votre demande de $eventDetails a été reçue le $date à $time. <br> Votre identifiant d''événement est #$eventId. <br> Connectez-vous sur le site officiel $trackServiceRequestLink pour plus de détails. <br>', module_id='10006', module_name='Resident Services', template_typ_code='update-demo-data-request-received-email-content', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1328' AND lang_code='fra';
     UPDATE master.template
     SET "name"='Request received email to self update demographic data', descr='Request received email to self update demographic data', file_format_code='txt', model='velocity', file_txt='Dear $name, <br>
      Your request to $eventDetails has been received on $date at $time. <br>
      Your event id is #$eventId. <br>
      Log in to the official website $trackServiceRequestLink for further details. <br>', module_id='10006', module_name='Resident Services', template_typ_code='update-demo-data-request-received-email-content', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1328' AND lang_code='eng';
     UPDATE master.template
     SET "name"='Success email to self update demographic data', descr='Success email to self update demographic data', file_format_code='txt', model='velocity', file_txt='عزيزي $name، <br> تم إتمام طلبك لـ $eventDetails بنجاح في $date في $time. <br> هوية الحدث الخاصة بك هي #$eventId. <br> قم بتسجيل الدخول إلى الموقع الرسمي $trackServiceRequestLink لمزيد من التفاصيل. <br>', module_id='10006', module_name='Resident Services', template_typ_code='update-demo-data-success-email-content', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1329' AND lang_code='ara';
     UPDATE master.template
     SET "name"='Success email to self update demographic data', descr='Success email to self update demographic data', file_format_code='txt', model='velocity', file_txt='Dear $name, <br>
      Your request to $eventDetails is completed successfully on $date at $time. <br>
      Your event id is #$eventId. <br>
      Log in to the official website $trackServiceRequestLink for further details. <br>', module_id='10006', module_name='Resident Services', template_typ_code='update-demo-data-success-email-content', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1329' AND lang_code='eng';
     UPDATE master.template
     SET "name"='Success email to self update demographic data', descr='Success email to self update demographic data', file_format_code='txt', model='velocity', file_txt='Cher $name, <br> Votre demande de $eventDetails a été réalisée avec succès le $date à $time. <br> Votre identifiant d''événement est #$eventId. <br> Connectez-vous sur le site officiel $trackServiceRequestLink pour plus de détails. <br>', module_id='10006', module_name='Resident Services', template_typ_code='update-demo-data-success-email-content', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1329' AND lang_code='fra';
     UPDATE master.template
     SET "name"='Failure email to self update demographic data', descr='Failure email to self update demographic data', file_format_code='txt', model='velocity', file_txt='Cher $name, <br> Votre demande de $eventDetails émise le $date à $time a échoué. <br> Votre identifiant d''événement est #$eventId. <br> Connectez-vous sur le site officiel $trackServiceRequestLink pour plus de détails. <br>', module_id='10006', module_name='Resident Services', template_typ_code='update-demo-data-failure-email-content', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1330' AND lang_code='fra';
     UPDATE master.template
     SET "name"='Failure email to self update demographic data', descr='Failure email to self update demographic data', file_format_code='txt', model='velocity', file_txt='Dear $name, <br>
      Your request to $eventDetails raised on $date at $time has failed. <br>
      Your event id is #$eventId. <br>
      Log in to the official website $trackServiceRequestLink for further details. <br>', module_id='10006', module_name='Resident Services', template_typ_code='update-demo-data-failure-email-content', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1330' AND lang_code='eng';
     UPDATE master.template
     SET "name"='Failure email to self update demographic data', descr='Failure email to self update demographic data', file_format_code='txt', model='velocity', file_txt='عزيزي $name، <br> فشل طلبك لـ $eventDetails الذي تم رفعه في $date في $time. <br> هوية الحدث الخاصة بك هي #$eventId. <br> قم بتسجيل الدخول إلى الموقع الرسمي $trackServiceRequestLink لمزيد من التفاصيل. <br>', module_id='10006', module_name='Resident Services', template_typ_code='update-demo-data-failure-email-content', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1330' AND lang_code='ara';
     UPDATE master.template
     SET "name"='Request received email subject to generate or revoke VID', descr='Request received email subject to generate or revoke VID', file_format_code='txt', model='velocity', file_txt='Accusé de réception : $eventDetails | ID de l''événement : $eventId | Statut : $status', module_id='10006', module_name='Resident Services', template_typ_code='gen-or-revoke-vid-request-received-email-subject', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1331' AND lang_code='fra';
     UPDATE master.template
     SET "name"='Request received email subject to generate or revoke VID', descr='Request received email subject to generate or revoke VID', file_format_code='txt', model='velocity', file_txt='Acknowledgement: $eventDetails | event ID: $eventId | Status: $status', module_id='10006', module_name='Resident Services', template_typ_code='gen-or-revoke-vid-request-received-email-subject', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1331' AND lang_code='eng';
     UPDATE master.template
     SET "name"='Request received email subject to generate or revoke VID', descr='Request received email subject to generate or revoke VID', file_format_code='txt', model='velocity', file_txt='اعتراف: $eventDetails | معرف الحدث: $eventId | الحالة: $status', module_id='10006', module_name='Resident Services', template_typ_code='gen-or-revoke-vid-request-received-email-subject', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1331' AND lang_code='ara';
     UPDATE master.template
     SET "name"='Success email subject to generate or revoke VID', descr='Success email subject to generate or revoke VID', file_format_code='txt', model='velocity', file_txt='Acknowledgement: $eventDetails | event ID: $eventId | Status: $status', module_id='10006', module_name='Resident Services', template_typ_code='gen-or-revoke-vid-success-email-subject', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1332' AND lang_code='eng';
     UPDATE master.template
     SET "name"='Success email subject to generate or revoke VID', descr='Success email subject to generate or revoke VID', file_format_code='txt', model='velocity', file_txt='اعتراف: $eventDetails | معرف الحدث: $eventId | الحالة: $status', module_id='10006', module_name='Resident Services', template_typ_code='gen-or-revoke-vid-success-email-subject', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1332' AND lang_code='ara';
     UPDATE master.template
     SET "name"='Success email subject to generate or revoke VID', descr='Success email subject to generate or revoke VID', file_format_code='txt', model='velocity', file_txt='Accusé de réception : $eventDetails | ID de l''événement : $eventId | Statut : $status', module_id='10006', module_name='Resident Services', template_typ_code='gen-or-revoke-vid-success-email-subject', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1332' AND lang_code='fra';
     UPDATE master.template
     SET "name"='Failure email subject to generate or revoke VID', descr='Failure email subject to generate or revoke VID', file_format_code='txt', model='velocity', file_txt='اعتراف: $eventDetails | معرف الحدث: $eventId | الحالة: $status', module_id='10006', module_name='Resident Services', template_typ_code='gen-or-revoke-vid-failure-email-subject', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1333' AND lang_code='ara';
     UPDATE master.template
     SET "name"='Failure email subject to generate or revoke VID', descr='Failure email subject to generate or revoke VID', file_format_code='txt', model='velocity', file_txt='Accusé de réception : $eventDetails | ID de l''événement : $eventId | Statut : $status', module_id='10006', module_name='Resident Services', template_typ_code='gen-or-revoke-vid-failure-email-subject', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1333' AND lang_code='fra';
     UPDATE master.template
     SET "name"='Failure email subject to generate or revoke VID', descr='Failure email subject to generate or revoke VID', file_format_code='txt', model='velocity', file_txt='Acknowledgement: $eventDetails | event ID: $eventId | Status: $status', module_id='10006', module_name='Resident Services', template_typ_code='gen-or-revoke-vid-failure-email-subject', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1333' AND lang_code='eng';
     UPDATE master.template
     SET "name"='Request received email to generate or revoke VID', descr='Request received email to generate or revoke VID', file_format_code='txt', model='velocity', file_txt='Cher $name, <br> Votre demande de $eventDetails a été reçue le $date à $time. <br> Votre identifiant d''événement est #$eventId. <br> Connectez-vous sur le site officiel $trackServiceRequestLink pour plus de détails. <br>', module_id='10006', module_name='Resident Services', template_typ_code='gen-or-revoke-vid-request-received-email-content', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1334' AND lang_code='fra';
     UPDATE master.template
     SET "name"='Request received email to generate or revoke VID', descr='Request received email to generate or revoke VID', file_format_code='txt', model='velocity', file_txt='Dear $name, <br>
      Your request to $eventDetails has been received on $date at $time. <br>
      Your event id is #$eventId. <br>
      Log in to the official website $trackServiceRequestLink for further details. <br>', module_id='10006', module_name='Resident Services', template_typ_code='gen-or-revoke-vid-request-received-email-content', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1334' AND lang_code='eng';
     UPDATE master.template
     SET "name"='Request received email to generate or revoke VID', descr='Request received email to generate or revoke VID', file_format_code='txt', model='velocity', file_txt='عزيزي $name، <br> تم استلام طلبك لـ $eventDetails في $date في $time. <br> هوية الحدث الخاصة بك هي #$eventId. <br> قم بتسجيل الدخول إلى الموقع الرسمي $trackServiceRequestLink لمزيد من التفاصيل. <br>', module_id='10006', module_name='Resident Services', template_typ_code='gen-or-revoke-vid-request-received-email-content', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1334' AND lang_code='ara';
     UPDATE master.template
     SET "name"='Success email to generate or revoke VID', descr='Success email to generate or revoke VID', file_format_code='txt', model='velocity', file_txt='عزيزي $name، <br> تم إتمام طلبك لـ $eventDetails بنجاح في $date في $time. <br> هوية الحدث الخاصة بك هي #$eventId. <br> قم بتسجيل الدخول إلى الموقع الرسمي $trackServiceRequestLink لمزيد من التفاصيل. <br>', module_id='10006', module_name='Resident Services', template_typ_code='gen-or-revoke-vid-success-email-content', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1335' AND lang_code='ara';
     UPDATE master.template
     SET "name"='Success email to generate or revoke VID', descr='Success email to generate or revoke VID', file_format_code='txt', model='velocity', file_txt='Cher $name, <br> Votre demande de $eventDetails a été réalisée avec succès le $date à $time. <br> Votre identifiant d''événement est #$eventId. <br> Connectez-vous sur le site officiel $trackServiceRequestLink pour plus de détails. <br>', module_id='10006', module_name='Resident Services', template_typ_code='gen-or-revoke-vid-success-email-content', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1335' AND lang_code='fra';
     UPDATE master.template
     SET "name"='Success email to generate or revoke VID', descr='Success email to generate or revoke VID', file_format_code='txt', model='velocity', file_txt='Dear $name, <br>
      Your request to $eventDetails is completed successfully on $date at $time. <br>
      Your event id is #$eventId. <br>
      Log in to the official website $trackServiceRequestLink for further details. <br>', module_id='10006', module_name='Resident Services', template_typ_code='gen-or-revoke-vid-success-email-content', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1335' AND lang_code='eng';
     UPDATE master.template
     SET "name"='Failure email to generate or revoke VID', descr='Failure email to generate or revoke VID', file_format_code='txt', model='velocity', file_txt='عزيزي $name، <br> فشل طلبك لـ $eventDetails الذي تم رفعه في $date في $time. <br> هوية الحدث الخاصة بك هي #$eventId. <br> قم بتسجيل الدخول إلى الموقع الرسمي $trackServiceRequestLink لمزيد من التفاصيل. <br>', module_id='10006', module_name='Resident Services', template_typ_code='gen-or-revoke-vid-failure-email-content', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1336' AND lang_code='ara';
     UPDATE master.template
     SET "name"='Failure email to generate or revoke VID', descr='Failure email to generate or revoke VID', file_format_code='txt', model='velocity', file_txt='Cher $name, <br> Votre demande de $eventDetails émise le $date à $time a échoué. <br> Votre identifiant d''événement est #$eventId. <br> Connectez-vous sur le site officiel $trackServiceRequestLink pour plus de détails. <br>', module_id='10006', module_name='Resident Services', template_typ_code='gen-or-revoke-vid-failure-email-content', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1336' AND lang_code='fra';
     UPDATE master.template
     SET "name"='Failure email to generate or revoke VID', descr='Failure email to generate or revoke VID', file_format_code='txt', model='velocity', file_txt='Dear $name, <br>
      Your request to $eventDetails raised on $date at $time has failed. <br>
      Your event id is #$eventId. <br>
      Log in to the official website $trackServiceRequestLink for further details. <br>', module_id='10006', module_name='Resident Services', template_typ_code='gen-or-revoke-vid-failure-email-content', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1336' AND lang_code='eng';
     UPDATE master.template
     SET "name"='Request received email subject to get my UIN card', descr='Request received email subject to get my UIN card', file_format_code='txt', model='velocity', file_txt='Acknowledgement: $eventDetails | event ID: $eventId | Status: $status', module_id='10006', module_name='Resident Services', template_typ_code='get-my-uin-card-request-received-email-subject', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1337' AND lang_code='eng';
     UPDATE master.template
     SET "name"='Request received email subject to get my UIN card', descr='Request received email subject to get my UIN card', file_format_code='txt', model='velocity', file_txt='Accusé de réception : $eventDetails | ID de l''événement : $eventId | Statut : $status', module_id='10006', module_name='Resident Services', template_typ_code='get-my-uin-card-request-received-email-subject', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1337' AND lang_code='fra';
     UPDATE master.template
     SET "name"='Request received email subject to get my UIN card', descr='Request received email subject to get my UIN card', file_format_code='txt', model='velocity', file_txt='اعتراف: $eventDetails | معرف الحدث: $eventId | الحالة: $status', module_id='10006', module_name='Resident Services', template_typ_code='get-my-uin-card-request-received-email-subject', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1337' AND lang_code='ara';
     UPDATE master.template
     SET "name"='Success email subject to get my UIN card', descr='Success email subject to get my UIN card', file_format_code='txt', model='velocity', file_txt='اعتراف: $eventDetails | معرف الحدث: $eventId | الحالة: $status', module_id='10006', module_name='Resident Services', template_typ_code='get-my-uin-card-success-email-subject', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1338' AND lang_code='ara';
     UPDATE master.template
     SET "name"='Success email subject to get my UIN card', descr='Success email subject to get my UIN card', file_format_code='txt', model='velocity', file_txt='Acknowledgement: $eventDetails | event ID: $eventId | Status: $status', module_id='10006', module_name='Resident Services', template_typ_code='get-my-uin-card-success-email-subject', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1338' AND lang_code='eng';
     UPDATE master.template
     SET "name"='Success email subject to get my UIN card', descr='Success email subject to get my UIN card', file_format_code='txt', model='velocity', file_txt='Accusé de réception : $eventDetails | ID de l''événement : $eventId | Statut : $status', module_id='10006', module_name='Resident Services', template_typ_code='get-my-uin-card-success-email-subject', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1338' AND lang_code='fra';
     UPDATE master.template
     SET "name"='Failure email subject to get my UIN card', descr='Failure email subject to get my UIN card', file_format_code='txt', model='velocity', file_txt='Acknowledgement: $eventDetails | event ID: $eventId | Status: $status', module_id='10006', module_name='Resident Services', template_typ_code='get-my-uin-card-failure-email-subject', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1339' AND lang_code='eng';
     UPDATE master.template
     SET "name"='Failure email subject to get my UIN card', descr='Failure email subject to get my UIN card', file_format_code='txt', model='velocity', file_txt='Accusé de réception : $eventDetails | ID de l''événement : $eventId | Statut : $status', module_id='10006', module_name='Resident Services', template_typ_code='get-my-uin-card-failure-email-subject', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1339' AND lang_code='fra';
     UPDATE master.template
     SET "name"='Failure email subject to get my UIN card', descr='Failure email subject to get my UIN card', file_format_code='txt', model='velocity', file_txt='اعتراف: $eventDetails | معرف الحدث: $eventId | الحالة: $status', module_id='10006', module_name='Resident Services', template_typ_code='get-my-uin-card-failure-email-subject', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1339' AND lang_code='ara';
     UPDATE master.template
     SET "name"='Request received email to get my UIN card', descr='Request received email to get my UIN card', file_format_code='txt', model='velocity', file_txt='عزيزي $name، <br> تم استلام طلبك لـ $eventDetails في $date في $time. <br> هوية الحدث الخاصة بك هي #$eventId. <br> قم بتسجيل الدخول إلى الموقع الرسمي $trackServiceRequestLink لمزيد من التفاصيل. <br>', module_id='10006', module_name='Resident Services', template_typ_code='get-my-uin-card-request-received-email-content', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1340' AND lang_code='ara';
     UPDATE master.template
     SET "name"='Request received email to get my UIN card', descr='Request received email to get my UIN card', file_format_code='txt', model='velocity', file_txt='Cher $name, <br> Votre demande de $eventDetails a été reçue le $date à $time. <br> Votre identifiant d''événement est #$eventId. <br> Connectez-vous sur le site officiel $trackServiceRequestLink pour plus de détails. <br>', module_id='10006', module_name='Resident Services', template_typ_code='get-my-uin-card-request-received-email-content', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1340' AND lang_code='fra';
     UPDATE master.template
     SET "name"='Request received email to get my UIN card', descr='Request received email to get my UIN card', file_format_code='txt', model='velocity', file_txt='Dear $name, <br>
      Your request to $eventDetails has been received on $date at $time. <br>
      Your event id is #$eventId. <br>
      Log in to the official website $trackServiceRequestLink for further details. <br>', module_id='10006', module_name='Resident Services', template_typ_code='get-my-uin-card-request-received-email-content', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1340' AND lang_code='eng';
     UPDATE master.template
     SET "name"='Success email to get my UIN card', descr='Success email to get my UIN card', file_format_code='txt', model='velocity', file_txt='Cher $name, <br> Votre demande de $eventDetails a été réalisée avec succès le $date à $time. <br> Votre identifiant d''événement est #$eventId. <br> Connectez-vous sur le site officiel $trackServiceRequestLink pour plus de détails. <br>', module_id='10006', module_name='Resident Services', template_typ_code='get-my-uin-card-success-email-content', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1341' AND lang_code='fra';
     UPDATE master.template
     SET "name"='Success email to get my UIN card', descr='Success email to get my UIN card', file_format_code='txt', model='velocity', file_txt='Dear $name, <br>
      Your request to $eventDetails is completed successfully on $date at $time. <br>
      Your event id is #$eventId. <br>
      Log in to the official website $trackServiceRequestLink for further details. <br>', module_id='10006', module_name='Resident Services', template_typ_code='get-my-uin-card-success-email-content', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1341' AND lang_code='eng';
     UPDATE master.template
     SET "name"='Success email to get my UIN card', descr='Success email to get my UIN card', file_format_code='txt', model='velocity', file_txt='عزيزي $name، <br> تم إتمام طلبك لـ $eventDetails بنجاح في $date في $time. <br> هوية الحدث الخاصة بك هي #$eventId. <br> قم بتسجيل الدخول إلى الموقع الرسمي $trackServiceRequestLink لمزيد من التفاصيل. <br>', module_id='10006', module_name='Resident Services', template_typ_code='get-my-uin-card-success-email-content', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1341' AND lang_code='ara';
     UPDATE master.template
     SET "name"='Failure email to get my UIN card', descr='Failure email to get my UIN card', file_format_code='txt', model='velocity', file_txt='عزيزي $name، <br> فشل طلبك لـ $eventDetails الذي تم رفعه في $date في $time. <br> هوية الحدث الخاصة بك هي #$eventId. <br> قم بتسجيل الدخول إلى الموقع الرسمي $trackServiceRequestLink لمزيد من التفاصيل. <br>', module_id='10006', module_name='Resident Services', template_typ_code='get-my-uin-card-failure-email-content', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1342' AND lang_code='ara';
     UPDATE master.template
     SET "name"='Failure email to get my UIN card', descr='Failure email to get my UIN card', file_format_code='txt', model='velocity', file_txt='Cher $name, <br> Votre demande de $eventDetails émise le $date à $time a échoué. <br> Votre identifiant d''événement est #$eventId. <br> Connectez-vous sur le site officiel $trackServiceRequestLink pour plus de détails. <br>', module_id='10006', module_name='Resident Services', template_typ_code='get-my-uin-card-failure-email-content', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1342' AND lang_code='fra';
     UPDATE master.template
     SET "name"='Failure email to get my UIN card', descr='Failure email to get my UIN card', file_format_code='txt', model='velocity', file_txt='Dear $name, <br>
      Your request to $eventDetails raised on $date at $time has failed. <br>
      Your event id is #$eventId. <br>
      Log in to the official website $trackServiceRequestLink for further details. <br>', module_id='10006', module_name='Resident Services', template_typ_code='get-my-uin-card-failure-email-content', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1342' AND lang_code='eng';
     UPDATE master.template
     SET "name"='Request received email subject to verify my phone and email', descr='Request received email subject to verify my phone and email', file_format_code='txt', model='velocity', file_txt='Accusé de réception : $eventDetails | ID de l''événement : $eventId | Statut : $status', module_id='10006', module_name='Resident Services', template_typ_code='verify-my-phone-email-request-received-email-subject', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1343' AND lang_code='fra';
     UPDATE master.template
     SET "name"='Request received email subject to verify my phone and email', descr='Request received email subject to verify my phone and email', file_format_code='txt', model='velocity', file_txt='Acknowledgement: $eventDetails | event ID: $eventId | Status: $status', module_id='10006', module_name='Resident Services', template_typ_code='verify-my-phone-email-request-received-email-subject', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1343' AND lang_code='eng';
     UPDATE master.template
     SET "name"='Request received email subject to verify my phone and email', descr='Request received email subject to verify my phone and email', file_format_code='txt', model='velocity', file_txt='اعتراف: $eventDetails | معرف الحدث: $eventId | الحالة: $status', module_id='10006', module_name='Resident Services', template_typ_code='verify-my-phone-email-request-received-email-subject', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1343' AND lang_code='ara';
     UPDATE master.template
     SET "name"='Success email subject to verify my phone and email', descr='Success email subject to verify my phone and email', file_format_code='txt', model='velocity', file_txt='Accusé de réception : $eventDetails | ID de l''événement : $eventId | Statut : $status', module_id='10006', module_name='Resident Services', template_typ_code='verify-my-phone-email-success-email-subject', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1344' AND lang_code='fra';
     UPDATE master.template
     SET "name"='Success email subject to verify my phone and email', descr='Success email subject to verify my phone and email', file_format_code='txt', model='velocity', file_txt='اعتراف: $eventDetails | معرف الحدث: $eventId | الحالة: $status', module_id='10006', module_name='Resident Services', template_typ_code='verify-my-phone-email-success-email-subject', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1344' AND lang_code='ara';
     UPDATE master.template
     SET "name"='Success email subject to verify my phone and email', descr='Success email subject to verify my phone and email', file_format_code='txt', model='velocity', file_txt='Acknowledgement: $eventDetails | event ID: $eventId | Status: $status', module_id='10006', module_name='Resident Services', template_typ_code='verify-my-phone-email-success-email-subject', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1344' AND lang_code='eng';
     UPDATE master.template
     SET "name"='Failure email subject to verify my phone and email', descr='Failure email subject to verify my phone and email', file_format_code='txt', model='velocity', file_txt='اعتراف: $eventDetails | معرف الحدث: $eventId | الحالة: $status', module_id='10006', module_name='Resident Services', template_typ_code='verify-my-phone-email-failure-email-subject', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1345' AND lang_code='ara';
     UPDATE master.template
     SET "name"='Failure email subject to verify my phone and email', descr='Failure email subject to verify my phone and email', file_format_code='txt', model='velocity', file_txt='Accusé de réception : $eventDetails | ID de l''événement : $eventId | Statut : $status', module_id='10006', module_name='Resident Services', template_typ_code='verify-my-phone-email-failure-email-subject', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1345' AND lang_code='fra';
     UPDATE master.template
     SET "name"='Failure email subject to verify my phone and email', descr='Failure email subject to verify my phone and email', file_format_code='txt', model='velocity', file_txt='Acknowledgement: $eventDetails | event ID: $eventId | Status: $status', module_id='10006', module_name='Resident Services', template_typ_code='verify-my-phone-email-failure-email-subject', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1345' AND lang_code='eng';
     UPDATE master.template
     SET "name"='Request received email to verify my phone and email', descr='Request received email to verify my phone and email', file_format_code='txt', model='velocity', file_txt='Cher $name, <br> Votre demande de $eventDetails a été reçue le $date à $time. <br> Votre identifiant d''événement est #$eventId. <br> Connectez-vous sur le site officiel $trackServiceRequestLink pour plus de détails. <br>', module_id='10006', module_name='Resident Services', template_typ_code='verify-my-phone-email-request-received-email-content', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1346' AND lang_code='fra';
     UPDATE master.template
     SET "name"='Request received email to verify my phone and email', descr='Request received email to verify my phone and email', file_format_code='txt', model='velocity', file_txt='Dear $name, <br>
      Your request to $eventDetails has been received on $date at $time. <br>
      Your event id is #$eventId. <br>
      Log in to the official website $trackServiceRequestLink for further details. <br>', module_id='10006', module_name='Resident Services', template_typ_code='verify-my-phone-email-request-received-email-content', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1346' AND lang_code='eng';
     UPDATE master.template
     SET "name"='Request received email to verify my phone and email', descr='Request received email to verify my phone and email', file_format_code='txt', model='velocity', file_txt='عزيزي $name، <br> تم استلام طلبك لـ $eventDetails في $date في $time. <br> هوية الحدث الخاصة بك هي #$eventId. <br> قم بتسجيل الدخول إلى الموقع الرسمي $trackServiceRequestLink لمزيد من التفاصيل. <br>', module_id='10006', module_name='Resident Services', template_typ_code='verify-my-phone-email-request-received-email-content', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1346' AND lang_code='ara';
     UPDATE master.template
     SET "name"='Success email to verify my phone and email', descr='Success email to verify my phone and email', file_format_code='txt', model='velocity', file_txt='Cher $name, <br> Votre demande de $eventDetails a été réalisée avec succès le $date à $time. <br> Votre identifiant d''événement est #$eventId. <br> Connectez-vous sur le site officiel $trackServiceRequestLink pour plus de détails. <br>', module_id='10006', module_name='Resident Services', template_typ_code='verify-my-phone-email-success-email-content', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1347' AND lang_code='fra';
     UPDATE master.template
     SET "name"='Success email to verify my phone and email', descr='Success email to verify my phone and email', file_format_code='txt', model='velocity', file_txt='Dear $name, <br>
      Your request to $eventDetails is completed successfully on $date at $time. <br>
      Your event id is #$eventId. <br>
      Log in to the official website $trackServiceRequestLink for further details. <br>', module_id='10006', module_name='Resident Services', template_typ_code='verify-my-phone-email-success-email-content', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1347' AND lang_code='eng';
     UPDATE master.template
     SET "name"='Success email to verify my phone and email', descr='Success email to verify my phone and email', file_format_code='txt', model='velocity', file_txt='عزيزي $name، <br> تم إتمام طلبك لـ $eventDetails بنجاح في $date في $time. <br> هوية الحدث الخاصة بك هي #$eventId. <br> قم بتسجيل الدخول إلى الموقع الرسمي $trackServiceRequestLink لمزيد من التفاصيل. <br>', module_id='10006', module_name='Resident Services', template_typ_code='verify-my-phone-email-success-email-content', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1347' AND lang_code='ara';
     UPDATE master.template
     SET "name"='Failure email to verify my phone and email', descr='Failure email to verify my phone and email', file_format_code='txt', model='velocity', file_txt='عزيزي $name، <br> فشل طلبك لـ $eventDetails الذي تم رفعه في $date في $time. <br> هوية الحدث الخاصة بك هي #$eventId. <br> قم بتسجيل الدخول إلى الموقع الرسمي $trackServiceRequestLink لمزيد من التفاصيل. <br>', module_id='10006', module_name='Resident Services', template_typ_code='verify-my-phone-email-failure-email-content', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1348' AND lang_code='ara';
     UPDATE master.template
     SET "name"='Failure email to verify my phone and email', descr='Failure email to verify my phone and email', file_format_code='txt', model='velocity', file_txt='Dear $name, <br>
      Your request to $eventDetails raised on $date at $time has failed. <br>
      Your event id is #$eventId. <br>
      Log in to the official website $trackServiceRequestLink for further details. <br>', module_id='10006', module_name='Resident Services', template_typ_code='verify-my-phone-email-failure-email-content', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1348' AND lang_code='eng';
     UPDATE master.template
     SET "name"='Failure email to verify my phone and email', descr='Failure email to verify my phone and email', file_format_code='txt', model='velocity', file_txt='Cher $name, <br> Votre demande de $eventDetails émise le $date à $time a échoué. <br> Votre identifiant d''événement est #$eventId. <br> Connectez-vous sur le site officiel $trackServiceRequestLink pour plus de détails. <br>', module_id='10006', module_name='Resident Services', template_typ_code='verify-my-phone-email-failure-email-content', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1348' AND lang_code='fra';
     UPDATE master.template
     SET "name"='Request received sms to customize and download my card', descr='Request received sms to customize and download my card', file_format_code='txt', model='velocity', file_txt='Cher $name, <br> Votre demande de $eventDetails a été reçue le $date à $time. <br> Votre identifiant d''événement est #$eventId. <br> Connectez-vous sur le site officiel $trackServiceRequestLink pour plus de détails. <br>', module_id='10006', module_name='Resident Services', template_typ_code='cust-and-down-my-card-request-received_SMS', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1349' AND lang_code='fra';
     UPDATE master.template
     SET "name"='Request received sms to customize and download my card', descr='Request received sms to customize and download my card', file_format_code='txt', model='velocity', file_txt='Dear $name, <br>
      Your request to $eventDetails has been received on $date at $time. <br>
      Your event id is #$eventId. <br>
      Log in to the official website $trackServiceRequestLink for further details. <br>', module_id='10006', module_name='Resident Services', template_typ_code='cust-and-down-my-card-request-received_SMS', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1349' AND lang_code='eng';
     UPDATE master.template
     SET "name"='Request received sms to customize and download my card', descr='Request received sms to customize and download my card', file_format_code='txt', model='velocity', file_txt='عزيزي $name، <br> تم استلام طلبك لـ $eventDetails في $date في $time. <br> هوية الحدث الخاصة بك هي #$eventId. <br> قم بتسجيل الدخول إلى الموقع الرسمي $trackServiceRequestLink لمزيد من التفاصيل. <br>', module_id='10006', module_name='Resident Services', template_typ_code='cust-and-down-my-card-request-received_SMS', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1349' AND lang_code='ara';
     UPDATE master.template
     SET "name"='Success sms to customize and download my card', descr='Success sms to customize and download my card', file_format_code='txt', model='velocity', file_txt='Cher $name, <br> Votre demande de $eventDetails a été réalisée avec succès le $date à $time. <br> Votre identifiant d''événement est #$eventId. <br> Connectez-vous sur le site officiel $trackServiceRequestLink pour plus de détails. <br>', module_id='10006', module_name='Resident Services', template_typ_code='cust-and-down-my-card-success_SMS', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1350' AND lang_code='fra';
     UPDATE master.template
     SET "name"='Success sms to customize and download my card', descr='Success sms to customize and download my card', file_format_code='txt', model='velocity', file_txt='عزيزي $name، <br> تم إتمام طلبك لـ $eventDetails بنجاح في $date في $time. <br> هوية الحدث الخاصة بك هي #$eventId. <br> قم بتسجيل الدخول إلى الموقع الرسمي $trackServiceRequestLink لمزيد من التفاصيل. <br>', module_id='10006', module_name='Resident Services', template_typ_code='cust-and-down-my-card-success_SMS', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1350' AND lang_code='ara';
     UPDATE master.template
     SET "name"='Success sms to customize and download my card', descr='Success sms to customize and download my card', file_format_code='txt', model='velocity', file_txt='Dear $name, <br>
      Your request to $eventDetails is completed successfully on $date at $time. <br>
      Your event id is #$eventId. <br>
      Log in to the official website $trackServiceRequestLink for further details. <br>', module_id='10006', module_name='Resident Services', template_typ_code='cust-and-down-my-card-success_SMS', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1350' AND lang_code='eng';
     UPDATE master.template
     SET "name"='Failure sms to customize and download my card', descr='Failure sms to customize and download my card', file_format_code='txt', model='velocity', file_txt='Cher $name, <br> Votre demande de $eventDetails émise le $date à $time a échoué. <br> Votre identifiant d''événement est #$eventId. <br> Connectez-vous sur le site officiel $trackServiceRequestLink pour plus de détails. <br>', module_id='10006', module_name='Resident Services', template_typ_code='cust-and-down-my-card-failure_SMS', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1351' AND lang_code='fra';
     UPDATE master.template
     SET "name"='Failure sms to customize and download my card', descr='Failure sms to customize and download my card', file_format_code='txt', model='velocity', file_txt='عزيزي $name، <br> فشل طلبك لـ $eventDetails الذي تم رفعه في $date في $time. <br> هوية الحدث الخاصة بك هي #$eventId. <br> قم بتسجيل الدخول إلى الموقع الرسمي $trackServiceRequestLink لمزيد من التفاصيل. <br>', module_id='10006', module_name='Resident Services', template_typ_code='cust-and-down-my-card-failure_SMS', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1351' AND lang_code='ara';
     UPDATE master.template
     SET "name"='Failure sms to customize and download my card', descr='Failure sms to customize and download my card', file_format_code='txt', model='velocity', file_txt='Dear $name, <br>
      Your request to $eventDetails raised on $date at $time has failed. <br>
      Your event id is #$eventId. <br>
      Log in to the official website $trackServiceRequestLink for further details. <br>', module_id='10006', module_name='Resident Services', template_typ_code='cust-and-down-my-card-failure_SMS', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1351' AND lang_code='eng';
     UPDATE master.template
     SET "name"='Request received sms to order a physical card', descr='Request received sms to order a physical card', file_format_code='txt', model='velocity', file_txt='Dear $name, <br>
      Your request to $eventDetails has been received on $date at $time. <br>
      Your event id is #$eventId. <br>
      Log in to the official website $trackServiceRequestLink for further details. <br>', module_id='10006', module_name='Resident Services', template_typ_code='order-a-physical-card-request-received_SMS', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1352' AND lang_code='eng';
     UPDATE master.template
     SET "name"='Request received sms to order a physical card', descr='Request received sms to order a physical card', file_format_code='txt', model='velocity', file_txt='عزيزي $name، <br> تم استلام طلبك لـ $eventDetails في $date في $time. <br> هوية الحدث الخاصة بك هي #$eventId. <br> قم بتسجيل الدخول إلى الموقع الرسمي $trackServiceRequestLink لمزيد من التفاصيل. <br>', module_id='10006', module_name='Resident Services', template_typ_code='order-a-physical-card-request-received_SMS', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1352' AND lang_code='ara';
     UPDATE master.template
     SET "name"='Request received sms to order a physical card', descr='Request received sms to order a physical card', file_format_code='txt', model='velocity', file_txt='Cher $name, <br> Votre demande de $eventDetails a été reçue le $date à $time. <br> Votre identifiant d''événement est #$eventId. <br> Connectez-vous sur le site officiel $trackServiceRequestLink pour plus de détails. <br>', module_id='10006', module_name='Resident Services', template_typ_code='order-a-physical-card-request-received_SMS', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1352' AND lang_code='fra';
     UPDATE master.template
     SET "name"='Success sms to order a physical card', descr='Success sms to order a physical card', file_format_code='txt', model='velocity', file_txt='عزيزي $name، <br>
     تم إكمال طلبك لـ $eventDetails بنجاح في $date في $time. <br>
     رقم الحدث الخاص بك هو #$eventId. <br>
     تسجيل الدخول إلى الموقع الرسمي $trackServiceRequestLink للمزيد من التفاصيل. <br>
     يمكنك تتبع حالة العملية باستخدام معرف العملية $transactionID على الرابط: $trackingLink', module_id='10006', module_name='Resident Services', template_typ_code='order-a-physical-card-success_SMS', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1353' AND lang_code='ara';
     UPDATE master.template
     SET "name"='Success sms to order a physical card', descr='Success sms to order a physical card', file_format_code='txt', model='velocity', file_txt='Cher $name, <br>
     Votre demande pour $eventDetails a été réalisée avec succès le $date à $time. <br>
     Votre numéro d''événement est #$eventId. <br>
     Connectez-vous sur le site officiel $trackServiceRequestLink pour plus de détails. <br>
     Vous pouvez suivre l''état de la transaction en utilisant l''ID de transaction $transactionID sur le lien : $trackingLink', module_id='10006', module_name='Resident Services', template_typ_code='order-a-physical-card-success_SMS', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1353' AND lang_code='fra';
     UPDATE master.template
     SET "name"='Success sms to order a physical card', descr='Success sms to order a physical card', file_format_code='txt', model='velocity', file_txt='Dear $name, <br>
      Your request to $eventDetails is completed successfully on $date at $time. <br>
      Your event id is #$eventId. <br>
      Log in to the official website $trackServiceRequestLink for further details. <br>
      You can track the status of the transaction using the transaction ID $transactionID on the link: $trackingLink', module_id='10006', module_name='Resident Services', template_typ_code='order-a-physical-card-success_SMS', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1353' AND lang_code='eng';
     UPDATE master.template
     SET "name"='Failure sms to order a physical card', descr='Failure sms to order a physical card', file_format_code='txt', model='velocity', file_txt='عزيزي $name، <br> فشل طلبك لـ $eventDetails الذي تم رفعه في $date في $time. <br> هوية الحدث الخاصة بك هي #$eventId. <br> قم بتسجيل الدخول إلى الموقع الرسمي $trackServiceRequestLink لمزيد من التفاصيل. <br>', module_id='10006', module_name='Resident Services', template_typ_code='order-a-physical-card-failure_SMS', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1354' AND lang_code='ara';
     UPDATE master.template
     SET "name"='Failure sms to order a physical card', descr='Failure sms to order a physical card', file_format_code='txt', model='velocity', file_txt='Dear $name, <br>
      Your request to $eventDetails raised on $date at $time has failed. <br>
      Your event id is #$eventId. <br>
      Log in to the official website $trackServiceRequestLink for further details. <br>', module_id='10006', module_name='Resident Services', template_typ_code='order-a-physical-card-failure_SMS', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1354' AND lang_code='eng';
     UPDATE master.template
     SET "name"='Failure sms to order a physical card', descr='Failure sms to order a physical card', file_format_code='txt', model='velocity', file_txt='Cher $name, <br> Votre demande de $eventDetails émise le $date à $time a échoué. <br> Votre identifiant d''événement est #$eventId. <br> Connectez-vous sur le site officiel $trackServiceRequestLink pour plus de détails. <br>', module_id='10006', module_name='Resident Services', template_typ_code='order-a-physical-card-failure_SMS', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1354' AND lang_code='fra';
     UPDATE master.template
     SET "name"='Request received sms to share my credential with a partner', descr='Request received sms to share my credential with a partner', file_format_code='txt', model='velocity', file_txt='عزيزي $name، <br> تم استلام طلبك لـ $eventDetails في $date في $time. <br> هوية الحدث الخاصة بك هي #$eventId. <br> قم بتسجيل الدخول إلى الموقع الرسمي $trackServiceRequestLink لمزيد من التفاصيل. <br>', module_id='10006', module_name='Resident Services', template_typ_code='share-cred-with-partner-request-received_SMS', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1355' AND lang_code='ara';
     UPDATE master.template
     SET "name"='Request received sms to share my credential with a partner', descr='Request received sms to share my credential with a partner', file_format_code='txt', model='velocity', file_txt='Dear $name, <br>
      Your request to $eventDetails has been received on $date at $time. <br>
      Your event id is #$eventId. <br>
      Log in to the official website $trackServiceRequestLink for further details. <br>', module_id='10006', module_name='Resident Services', template_typ_code='share-cred-with-partner-request-received_SMS', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1355' AND lang_code='eng';
     UPDATE master.template
     SET "name"='Request received sms to share my credential with a partner', descr='Request received sms to share my credential with a partner', file_format_code='txt', model='velocity', file_txt='Cher $name, <br> Votre demande de $eventDetails a été reçue le $date à $time. <br> Votre identifiant d''événement est #$eventId. <br> Connectez-vous sur le site officiel $trackServiceRequestLink pour plus de détails. <br>', module_id='10006', module_name='Resident Services', template_typ_code='share-cred-with-partner-request-received_SMS', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1355' AND lang_code='fra';
     UPDATE master.template
     SET "name"='Success sms to share my credential with a partner', descr='Success sms to share my credential with a partner', file_format_code='txt', model='velocity', file_txt='Dear $name, <br>
      Your request to $eventDetails ($partner) is completed successfully on $date at $time. <br>
      Your event id is #$eventId. <br>
      Log in to the official website $trackServiceRequestLink for further details. <br>', module_id='10006', module_name='Resident Services', template_typ_code='share-cred-with-partner-success_SMS', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1356' AND lang_code='eng';
     UPDATE master.template
     SET "name"='Success sms to share my credential with a partner', descr='Success sms to share my credential with a partner', file_format_code='txt', model='velocity', file_txt='عزيزي $name، <br>
     تم إكمال طلبك لـ $eventDetails ($partner) بنجاح في $date في $time. <br>
     رقم الحدث الخاص بك هو #$eventId. <br>
     تسجيل الدخول إلى الموقع الرسمي $trackServiceRequestLink للمزيد من التفاصيل. <br>', module_id='10006', module_name='Resident Services', template_typ_code='share-cred-with-partner-success_SMS', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1356' AND lang_code='ara';
     UPDATE master.template
     SET "name"='Success sms to share my credential with a partner', descr='Success sms to share my credential with a partner', file_format_code='txt', model='velocity', file_txt='Cher $name, <br>
     Votre demande pour $eventDetails ($partner) a été réalisée avec succès le $date à $time. <br>
     Votre numéro d''événement est #$eventId. <br>
     Connectez-vous sur le site officiel $trackServiceRequestLink pour plus de détails. <br>
     ', module_id='10006', module_name='Resident Services', template_typ_code='share-cred-with-partner-success_SMS', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1356' AND lang_code='fra';
     UPDATE master.template
     SET "name"='Failure sms to share my credential with a partner', descr='Failure sms to share my credential with a partner', file_format_code='txt', model='velocity', file_txt='Cher $name, <br> Votre demande de $eventDetails émise le $date à $time a échoué. <br> Votre identifiant d''événement est #$eventId. <br> Connectez-vous sur le site officiel $trackServiceRequestLink pour plus de détails. <br>', module_id='10006', module_name='Resident Services', template_typ_code='share-cred-with-partner-failure_SMS', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1357' AND lang_code='fra';
     UPDATE master.template
     SET "name"='Failure sms to share my credential with a partner', descr='Failure sms to share my credential with a partner', file_format_code='txt', model='velocity', file_txt='Dear $name, <br>
      Your request to $eventDetails raised on $date at $time has failed. <br>
      Your event id is #$eventId. <br>
      Log in to the official website $trackServiceRequestLink for further details. <br>', module_id='10006', module_name='Resident Services', template_typ_code='share-cred-with-partner-failure_SMS', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1357' AND lang_code='eng';
     UPDATE master.template
     SET "name"='Failure sms to share my credential with a partner', descr='Failure sms to share my credential with a partner', file_format_code='txt', model='velocity', file_txt='عزيزي $name، <br> فشل طلبك لـ $eventDetails الذي تم رفعه في $date في $time. <br> هوية الحدث الخاصة بك هي #$eventId. <br> قم بتسجيل الدخول إلى الموقع الرسمي $trackServiceRequestLink لمزيد من التفاصيل. <br>', module_id='10006', module_name='Resident Services', template_typ_code='share-cred-with-partner-failure_SMS', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1357' AND lang_code='ara';
     UPDATE master.template
     SET "name"='Request received sms to lock/unlock authentication', descr='Request received sms to lock/unlock authentication', file_format_code='txt', model='velocity', file_txt='عزيزي $name، <br> تم استلام طلبك لـ $eventDetails في $date في $time. <br> هوية الحدث الخاصة بك هي #$eventId. <br> قم بتسجيل الدخول إلى الموقع الرسمي $trackServiceRequestLink لمزيد من التفاصيل. <br>', module_id='10006', module_name='Resident Services', template_typ_code='lock-unlock-auth-request-received_SMS', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1358' AND lang_code='ara';
     UPDATE master.template
     SET "name"='Request received sms to lock/unlock authentication', descr='Request received sms to lock/unlock authentication', file_format_code='txt', model='velocity', file_txt='Dear $name, <br>
      Your request to $eventDetails has been received on $date at $time. <br>
      Your event id is #$eventId. <br>
      Log in to the official website $trackServiceRequestLink for further details. <br>', module_id='10006', module_name='Resident Services', template_typ_code='lock-unlock-auth-request-received_SMS', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1358' AND lang_code='eng';
     UPDATE master.template
     SET "name"='Request received sms to lock/unlock authentication', descr='Request received sms to lock/unlock authentication', file_format_code='txt', model='velocity', file_txt='Cher $name, <br> Votre demande de $eventDetails a été reçue le $date à $time. <br> Votre identifiant d''événement est #$eventId. <br> Connectez-vous sur le site officiel $trackServiceRequestLink pour plus de détails. <br>', module_id='10006', module_name='Resident Services', template_typ_code='lock-unlock-auth-request-received_SMS', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1358' AND lang_code='fra';
     UPDATE master.template
     SET "name"='Success sms to lock/unlock authentication', descr='Success sms to lock/unlock authentication', file_format_code='txt', model='velocity', file_txt='Dear $name, <br>
      Your request to $eventDetails is completed successfully on $date at $time. <br>
      Your event id is #$eventId. <br>
      Log in to the official website $trackServiceRequestLink for further details. <br>', module_id='10006', module_name='Resident Services', template_typ_code='lock-unlock-auth-success_SMS', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1359' AND lang_code='eng';
     UPDATE master.template
     SET "name"='Success sms to lock/unlock authentication', descr='Success sms to lock/unlock authentication', file_format_code='txt', model='velocity', file_txt='عزيزي $name، <br> تم إتمام طلبك لـ $eventDetails بنجاح في $date في $time. <br> هوية الحدث الخاصة بك هي #$eventId. <br> قم بتسجيل الدخول إلى الموقع الرسمي $trackServiceRequestLink لمزيد من التفاصيل. <br>', module_id='10006', module_name='Resident Services', template_typ_code='lock-unlock-auth-success_SMS', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1359' AND lang_code='ara';
     UPDATE master.template
     SET "name"='Success sms to lock/unlock authentication', descr='Success sms to lock/unlock authentication', file_format_code='txt', model='velocity', file_txt='Cher $name, <br> Votre demande de $eventDetails a été réalisée avec succès le $date à $time. <br> Votre identifiant d''événement est #$eventId. <br> Connectez-vous sur le site officiel $trackServiceRequestLink pour plus de détails. <br>', module_id='10006', module_name='Resident Services', template_typ_code='lock-unlock-auth-success_SMS', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1359' AND lang_code='fra';
     UPDATE master.template
     SET "name"='Failure sms to lock/unlock authentication', descr='Failure sms to lock/unlock authentication', file_format_code='txt', model='velocity', file_txt='عزيزي $name، <br> فشل طلبك لـ $eventDetails الذي تم رفعه في $date في $time. <br> هوية الحدث الخاصة بك هي #$eventId. <br> قم بتسجيل الدخول إلى الموقع الرسمي $trackServiceRequestLink لمزيد من التفاصيل. <br>', module_id='10006', module_name='Resident Services', template_typ_code='lock-unlock-auth-failure_SMS', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1360' AND lang_code='ara';
     UPDATE master.template
     SET "name"='Failure sms to lock/unlock authentication', descr='Failure sms to lock/unlock authentication', file_format_code='txt', model='velocity', file_txt='Dear $name, <br>
      Your request to $eventDetails raised on $date at $time has failed. <br>
      Your event id is #$eventId. <br>
      Log in to the official website $trackServiceRequestLink for further details. <br>', module_id='10006', module_name='Resident Services', template_typ_code='lock-unlock-auth-failure_SMS', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1360' AND lang_code='eng';
     UPDATE master.template
     SET "name"='Failure sms to lock/unlock authentication', descr='Failure sms to lock/unlock authentication', file_format_code='txt', model='velocity', file_txt='Cher $name, <br> Votre demande de $eventDetails émise le $date à $time a échoué. <br> Votre identifiant d''événement est #$eventId. <br> Connectez-vous sur le site officiel $trackServiceRequestLink pour plus de détails. <br>', module_id='10006', module_name='Resident Services', template_typ_code='lock-unlock-auth-failure_SMS', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1360' AND lang_code='fra';
     UPDATE master.template
     SET "name"='Request received sms to self update demographic data', descr='Request received sms to self update demographic data', file_format_code='txt', model='velocity', file_txt='Cher $name, <br> Votre demande de $eventDetails a été reçue le $date à $time. <br> Votre identifiant d''événement est #$eventId. <br> Connectez-vous sur le site officiel $trackServiceRequestLink pour plus de détails. <br>', module_id='10006', module_name='Resident Services', template_typ_code='update-demo-data-request-received_SMS', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1361' AND lang_code='fra';
     UPDATE master.template
     SET "name"='Request received sms to self update demographic data', descr='Request received sms to self update demographic data', file_format_code='txt', model='velocity', file_txt='عزيزي $name، <br> تم استلام طلبك لـ $eventDetails في $date في $time. <br> هوية الحدث الخاصة بك هي #$eventId. <br> قم بتسجيل الدخول إلى الموقع الرسمي $trackServiceRequestLink لمزيد من التفاصيل. <br>', module_id='10006', module_name='Resident Services', template_typ_code='update-demo-data-request-received_SMS', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1361' AND lang_code='ara';
     UPDATE master.template
     SET "name"='Request received sms to self update demographic data', descr='Request received sms to self update demographic data', file_format_code='txt', model='velocity', file_txt='Dear $name, <br>
      Your request to $eventDetails has been received on $date at $time. <br>
      Your event id is #$eventId. <br>
      Log in to the official website $trackServiceRequestLink for further details. <br>', module_id='10006', module_name='Resident Services', template_typ_code='update-demo-data-request-received_SMS', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1361' AND lang_code='eng';
     UPDATE master.template
     SET "name"='Success sms to self update demographic data', descr='Success sms to self update demographic data', file_format_code='txt', model='velocity', file_txt='Dear $name, <br>
      Your request to $eventDetails is completed successfully on $date at $time. <br>
      Your event id is #$eventId. <br>
      Log in to the official website $trackServiceRequestLink for further details. <br>', module_id='10006', module_name='Resident Services', template_typ_code='update-demo-data-success_SMS', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1362' AND lang_code='eng';
     UPDATE master.template
     SET "name"='Success sms to self update demographic data', descr='Success sms to self update demographic data', file_format_code='txt', model='velocity', file_txt='عزيزي $name، <br> تم إتمام طلبك لـ $eventDetails بنجاح في $date في $time. <br> هوية الحدث الخاصة بك هي #$eventId. <br> قم بتسجيل الدخول إلى الموقع الرسمي $trackServiceRequestLink لمزيد من التفاصيل. <br>', module_id='10006', module_name='Resident Services', template_typ_code='update-demo-data-success_SMS', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1362' AND lang_code='ara';
     UPDATE master.template
     SET "name"='Success sms to self update demographic data', descr='Success sms to self update demographic data', file_format_code='txt', model='velocity', file_txt='Cher $name, <br> Votre demande de $eventDetails a été réalisée avec succès le $date à $time. <br> Votre identifiant d''événement est #$eventId. <br> Connectez-vous sur le site officiel $trackServiceRequestLink pour plus de détails. <br>', module_id='10006', module_name='Resident Services', template_typ_code='update-demo-data-success_SMS', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1362' AND lang_code='fra';
     UPDATE master.template
     SET "name"='Failure sms to self update demographic data', descr='Failure sms to self update demographic data', file_format_code='txt', model='velocity', file_txt='Cher $name, <br> Votre demande de $eventDetails émise le $date à $time a échoué. <br> Votre identifiant d''événement est #$eventId. <br> Connectez-vous sur le site officiel $trackServiceRequestLink pour plus de détails. <br>', module_id='10006', module_name='Resident Services', template_typ_code='update-demo-data-failure_SMS', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1363' AND lang_code='fra';
     UPDATE master.template
     SET "name"='Failure sms to self update demographic data', descr='Failure sms to self update demographic data', file_format_code='txt', model='velocity', file_txt='Dear $name, <br>
      Your request to $eventDetails raised on $date at $time has failed. <br>
      Your event id is #$eventId. <br>
      Log in to the official website $trackServiceRequestLink for further details. <br>', module_id='10006', module_name='Resident Services', template_typ_code='update-demo-data-failure_SMS', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1363' AND lang_code='eng';
     UPDATE master.template
     SET "name"='Failure sms to self update demographic data', descr='Failure sms to self update demographic data', file_format_code='txt', model='velocity', file_txt='عزيزي $name، <br> فشل طلبك لـ $eventDetails الذي تم رفعه في $date في $time. <br> هوية الحدث الخاصة بك هي #$eventId. <br> قم بتسجيل الدخول إلى الموقع الرسمي $trackServiceRequestLink لمزيد من التفاصيل. <br>', module_id='10006', module_name='Resident Services', template_typ_code='update-demo-data-failure_SMS', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1363' AND lang_code='ara';
     UPDATE master.template
     SET "name"='Request received sms to generate or revoke VID', descr='Request received sms to generate or revoke VID', file_format_code='txt', model='velocity', file_txt='عزيزي $name، <br> تم استلام طلبك لـ $eventDetails في $date في $time. <br> هوية الحدث الخاصة بك هي #$eventId. <br> قم بتسجيل الدخول إلى الموقع الرسمي $trackServiceRequestLink لمزيد من التفاصيل. <br>', module_id='10006', module_name='Resident Services', template_typ_code='gen-or-revoke-vid-request-received_SMS', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1364' AND lang_code='ara';
     UPDATE master.template
     SET "name"='Request received sms to generate or revoke VID', descr='Request received sms to generate or revoke VID', file_format_code='txt', model='velocity', file_txt='Cher $name, <br> Votre demande de $eventDetails a été reçue le $date à $time. <br> Votre identifiant d''événement est #$eventId. <br> Connectez-vous sur le site officiel $trackServiceRequestLink pour plus de détails. <br>', module_id='10006', module_name='Resident Services', template_typ_code='gen-or-revoke-vid-request-received_SMS', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1364' AND lang_code='fra';
     UPDATE master.template
     SET "name"='Request received sms to generate or revoke VID', descr='Request received sms to generate or revoke VID', file_format_code='txt', model='velocity', file_txt='Dear $name, <br>
      Your request to $eventDetails has been received on $date at $time. <br>
      Your event id is #$eventId. <br>
      Log in to the official website $trackServiceRequestLink for further details. <br>', module_id='10006', module_name='Resident Services', template_typ_code='gen-or-revoke-vid-request-received_SMS', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1364' AND lang_code='eng';
     UPDATE master.template
     SET "name"='Success sms to generate or revoke VID', descr='Success sms to generate or revoke VID', file_format_code='txt', model='velocity', file_txt='عزيزي $name، <br> تم إتمام طلبك لـ $eventDetails بنجاح في $date في $time. <br> هوية الحدث الخاصة بك هي #$eventId. <br> قم بتسجيل الدخول إلى الموقع الرسمي $trackServiceRequestLink لمزيد من التفاصيل. <br>', module_id='10006', module_name='Resident Services', template_typ_code='gen-or-revoke-vid-success_SMS', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1365' AND lang_code='ara';
     UPDATE master.template
     SET "name"='Success sms to generate or revoke VID', descr='Success sms to generate or revoke VID', file_format_code='txt', model='velocity', file_txt='Dear $name, <br>
      Your request to $eventDetails is completed successfully on $date at $time. <br>
      Your event id is #$eventId. <br>
      Log in to the official website $trackServiceRequestLink for further details. <br>', module_id='10006', module_name='Resident Services', template_typ_code='gen-or-revoke-vid-success_SMS', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1365' AND lang_code='eng';
     UPDATE master.template
     SET "name"='Success sms to generate or revoke VID', descr='Success sms to generate or revoke VID', file_format_code='txt', model='velocity', file_txt='Cher $name, <br> Votre demande de $eventDetails a été réalisée avec succès le $date à $time. <br> Votre identifiant d''événement est #$eventId. <br> Connectez-vous sur le site officiel $trackServiceRequestLink pour plus de détails. <br>', module_id='10006', module_name='Resident Services', template_typ_code='gen-or-revoke-vid-success_SMS', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1365' AND lang_code='fra';
     UPDATE master.template
     SET "name"='Failure sms to generate or revoke VID', descr='Failure sms to generate or revoke VID', file_format_code='txt', model='velocity', file_txt='Dear $name, <br>
      Your request to $eventDetails raised on $date at $time has failed. <br>
      Your event id is #$eventId. <br>
      Log in to the official website $trackServiceRequestLink for further details. <br>', module_id='10006', module_name='Resident Services', template_typ_code='gen-or-revoke-vid-failure_SMS', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1366' AND lang_code='eng';
     UPDATE master.template
     SET "name"='Failure sms to generate or revoke VID', descr='Failure sms to generate or revoke VID', file_format_code='txt', model='velocity', file_txt='عزيزي $name، <br> فشل طلبك لـ $eventDetails الذي تم رفعه في $date في $time. <br> هوية الحدث الخاصة بك هي #$eventId. <br> قم بتسجيل الدخول إلى الموقع الرسمي $trackServiceRequestLink لمزيد من التفاصيل. <br>', module_id='10006', module_name='Resident Services', template_typ_code='gen-or-revoke-vid-failure_SMS', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1366' AND lang_code='ara';
     UPDATE master.template
     SET "name"='Failure sms to generate or revoke VID', descr='Failure sms to generate or revoke VID', file_format_code='txt', model='velocity', file_txt='Cher $name, <br> Votre demande de $eventDetails émise le $date à $time a échoué. <br> Votre identifiant d''événement est #$eventId. <br> Connectez-vous sur le site officiel $trackServiceRequestLink pour plus de détails. <br>', module_id='10006', module_name='Resident Services', template_typ_code='gen-or-revoke-vid-failure_SMS', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1366' AND lang_code='fra';
     UPDATE master.template
     SET "name"='Request received sms to get my UIN card', descr='Request received sms to get my UIN card', file_format_code='txt', model='velocity', file_txt='Dear $name, <br>
      Your request to $eventDetails has been received on $date at $time. <br>
      Your event id is #$eventId. <br>
      Log in to the official website $trackServiceRequestLink for further details. <br>', module_id='10006', module_name='Resident Services', template_typ_code='get-my-uin-card-request-received_SMS', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1367' AND lang_code='eng';
     UPDATE master.template
     SET "name"='Request received sms to get my UIN card', descr='Request received sms to get my UIN card', file_format_code='txt', model='velocity', file_txt='عزيزي $name، <br> تم استلام طلبك لـ $eventDetails في $date في $time. <br> هوية الحدث الخاصة بك هي #$eventId. <br> قم بتسجيل الدخول إلى الموقع الرسمي $trackServiceRequestLink لمزيد من التفاصيل. <br>', module_id='10006', module_name='Resident Services', template_typ_code='get-my-uin-card-request-received_SMS', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1367' AND lang_code='ara';
     UPDATE master.template
     SET "name"='Request received sms to get my UIN card', descr='Request received sms to get my UIN card', file_format_code='txt', model='velocity', file_txt='Cher $name, <br> Votre demande de $eventDetails a été reçue le $date à $time. <br> Votre identifiant d''événement est #$eventId. <br> Connectez-vous sur le site officiel $trackServiceRequestLink pour plus de détails. <br>', module_id='10006', module_name='Resident Services', template_typ_code='get-my-uin-card-request-received_SMS', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1367' AND lang_code='fra';
     UPDATE master.template
     SET "name"='Success sms to get my UIN card', descr='Success sms to get my UIN card', file_format_code='txt', model='velocity', file_txt='Cher $name, <br> Votre demande de $eventDetails a été réalisée avec succès le $date à $time. <br> Votre identifiant d''événement est #$eventId. <br> Connectez-vous sur le site officiel $trackServiceRequestLink pour plus de détails. <br>', module_id='10006', module_name='Resident Services', template_typ_code='get-my-uin-card-success_SMS', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1368' AND lang_code='fra';
     UPDATE master.template
     SET "name"='Success sms to get my UIN card', descr='Success sms to get my UIN card', file_format_code='txt', model='velocity', file_txt='عزيزي $name، <br> تم إتمام طلبك لـ $eventDetails بنجاح في $date في $time. <br> هوية الحدث الخاصة بك هي #$eventId. <br> قم بتسجيل الدخول إلى الموقع الرسمي $trackServiceRequestLink لمزيد من التفاصيل. <br>', module_id='10006', module_name='Resident Services', template_typ_code='get-my-uin-card-success_SMS', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1368' AND lang_code='ara';
     UPDATE master.template
     SET "name"='Success sms to get my UIN card', descr='Success sms to get my UIN card', file_format_code='txt', model='velocity', file_txt='Dear $name, <br>
      Your request to $eventDetails is completed successfully on $date at $time. <br>
      Your event id is #$eventId. <br>
      Log in to the official website $trackServiceRequestLink for further details. <br>', module_id='10006', module_name='Resident Services', template_typ_code='get-my-uin-card-success_SMS', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1368' AND lang_code='eng';
     UPDATE master.template
     SET "name"='Failure sms to get my UIN card', descr='Failure sms to get my UIN card', file_format_code='txt', model='velocity', file_txt='Cher $name, <br> Votre demande de $eventDetails émise le $date à $time a échoué. <br> Votre identifiant d''événement est #$eventId. <br> Connectez-vous sur le site officiel $trackServiceRequestLink pour plus de détails. <br>', module_id='10006', module_name='Resident Services', template_typ_code='get-my-uin-card-failure_SMS', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1369' AND lang_code='fra';
     UPDATE master.template
     SET "name"='Failure sms to get my UIN card', descr='Failure sms to get my UIN card', file_format_code='txt', model='velocity', file_txt='عزيزي $name، <br> فشل طلبك لـ $eventDetails الذي تم رفعه في $date في $time. <br> هوية الحدث الخاصة بك هي #$eventId. <br> قم بتسجيل الدخول إلى الموقع الرسمي $trackServiceRequestLink لمزيد من التفاصيل. <br>', module_id='10006', module_name='Resident Services', template_typ_code='get-my-uin-card-failure_SMS', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1369' AND lang_code='ara';
     UPDATE master.template
     SET "name"='Failure sms to get my UIN card', descr='Failure sms to get my UIN card', file_format_code='txt', model='velocity', file_txt='Dear $name, <br>
      Your request to $eventDetails raised on $date at $time has failed. <br>
      Your event id is #$eventId. <br>
      Log in to the official website $trackServiceRequestLink for further details. <br>', module_id='10006', module_name='Resident Services', template_typ_code='get-my-uin-card-failure_SMS', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1369' AND lang_code='eng';
     UPDATE master.template
     SET "name"='Request received sms to verify my phone and email', descr='Request received sms to verify my phone and email', file_format_code='txt', model='velocity', file_txt='عزيزي $name، <br> تم استلام طلبك لـ $eventDetails في $date في $time. <br> هوية الحدث الخاصة بك هي #$eventId. <br> قم بتسجيل الدخول إلى الموقع الرسمي $trackServiceRequestLink لمزيد من التفاصيل. <br>', module_id='10006', module_name='Resident Services', template_typ_code='verify-my-phone-email-request-received_SMS', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1370' AND lang_code='ara';
     UPDATE master.template
     SET "name"='Request received sms to verify my phone and email', descr='Request received sms to verify my phone and email', file_format_code='txt', model='velocity', file_txt='Cher $name, <br> Votre demande de $eventDetails a été reçue le $date à $time. <br> Votre identifiant d''événement est #$eventId. <br> Connectez-vous sur le site officiel $trackServiceRequestLink pour plus de détails. <br>', module_id='10006', module_name='Resident Services', template_typ_code='verify-my-phone-email-request-received_SMS', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1370' AND lang_code='fra';
     UPDATE master.template
     SET "name"='Request received sms to verify my phone and email', descr='Request received sms to verify my phone and email', file_format_code='txt', model='velocity', file_txt='Dear $name, <br>
      Your request to $eventDetails has been received on $date at $time. <br>
      Your event id is #$eventId. <br>
      Log in to the official website $trackServiceRequestLink for further details. <br>', module_id='10006', module_name='Resident Services', template_typ_code='verify-my-phone-email-request-received_SMS', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1370' AND lang_code='eng';
     UPDATE master.template
     SET "name"='Success sms to verify my phone and email', descr='Success sms to verify my phone and email', file_format_code='txt', model='velocity', file_txt='Dear $name, <br>
      Your request to $eventDetails is completed successfully on $date at $time. <br>
      Your event id is #$eventId. <br>
      Log in to the official website $trackServiceRequestLink for further details. <br>', module_id='10006', module_name='Resident Services', template_typ_code='verify-my-phone-email-success_SMS', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1371' AND lang_code='eng';
     UPDATE master.template
     SET "name"='Success sms to verify my phone and email', descr='Success sms to verify my phone and email', file_format_code='txt', model='velocity', file_txt='Cher $name, <br> Votre demande de $eventDetails a été réalisée avec succès le $date à $time. <br> Votre identifiant d''événement est #$eventId. <br> Connectez-vous sur le site officiel $trackServiceRequestLink pour plus de détails. <br>', module_id='10006', module_name='Resident Services', template_typ_code='verify-my-phone-email-success_SMS', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1371' AND lang_code='fra';
     UPDATE master.template
     SET "name"='Success sms to verify my phone and email', descr='Success sms to verify my phone and email', file_format_code='txt', model='velocity', file_txt='عزيزي $name، <br> تم إتمام طلبك لـ $eventDetails بنجاح في $date في $time. <br> هوية الحدث الخاصة بك هي #$eventId. <br> قم بتسجيل الدخول إلى الموقع الرسمي $trackServiceRequestLink لمزيد من التفاصيل. <br>', module_id='10006', module_name='Resident Services', template_typ_code='verify-my-phone-email-success_SMS', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1371' AND lang_code='ara';
     UPDATE master.template
     SET "name"='Failure sms to verify my phone and email', descr='Failure sms to verify my phone and email', file_format_code='txt', model='velocity', file_txt='Dear $name, <br>
      Your request to $eventDetails raised on $date at $time has failed. <br>
      Your event id is #$eventId. <br>
      Log in to the official website $trackServiceRequestLink for further details. <br>', module_id='10006', module_name='Resident Services', template_typ_code='verify-my-phone-email-failure_SMS', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1372' AND lang_code='eng';
     UPDATE master.template
     SET "name"='Failure sms to verify my phone and email', descr='Failure sms to verify my phone and email', file_format_code='txt', model='velocity', file_txt='عزيزي $name، <br> فشل طلبك لـ $eventDetails الذي تم رفعه في $date في $time. <br> هوية الحدث الخاصة بك هي #$eventId. <br> قم بتسجيل الدخول إلى الموقع الرسمي $trackServiceRequestLink لمزيد من التفاصيل. <br>', module_id='10006', module_name='Resident Services', template_typ_code='verify-my-phone-email-failure_SMS', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1372' AND lang_code='ara';
     UPDATE master.template
     SET "name"='Failure sms to verify my phone and email', descr='Failure sms to verify my phone and email', file_format_code='txt', model='velocity', file_txt='Cher $name, <br> Votre demande de $eventDetails émise le $date à $time a échoué. <br> Votre identifiant d''événement est #$eventId. <br> Connectez-vous sur le site officiel $trackServiceRequestLink pour plus de détails. <br>', module_id='10006', module_name='Resident Services', template_typ_code='verify-my-phone-email-failure_SMS', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1372' AND lang_code='fra';
     UPDATE master.template
     SET "name"='Positive purpose to customize and download my card', descr='Positive purpose to customize and download my card', file_format_code='txt', model='velocity', file_txt='Personalized card was downloaded', module_id='10006', module_name='Resident Services', template_typ_code='cust-and-down-my-card-positive-purpose', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1373' AND lang_code='eng';
     UPDATE master.template
     SET "name"='Positive purpose to customize and download my card', descr='Positive purpose to customize and download my card', file_format_code='txt', model='velocity', file_txt='تم تنزيل البطاقة المخصصة', module_id='10006', module_name='Resident Services', template_typ_code='cust-and-down-my-card-positive-purpose', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1373' AND lang_code='ara';
     UPDATE master.template
     SET "name"='Positive purpose to customize and download my card', descr='Positive purpose to customize and download my card', file_format_code='txt', model='velocity', file_txt='Carte personnalisée a été téléchargée', module_id='10006', module_name='Resident Services', template_typ_code='cust-and-down-my-card-positive-purpose', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1373' AND lang_code='fra';
     UPDATE master.template
     SET "name"='Negative purpose to customize and download my card', descr='Negative purpose to customize and download my card', file_format_code='txt', model='velocity', file_txt='An attempt was made to download personalised card', module_id='10006', module_name='Resident Services', template_typ_code='cust-and-down-my-card-negative-purpose', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1374' AND lang_code='eng';
     UPDATE master.template
     SET "name"='Negative purpose to customize and download my card', descr='Negative purpose to customize and download my card', file_format_code='txt', model='velocity', file_txt='Une tentative a été faite pour télécharger une carte personnalisée', module_id='10006', module_name='Resident Services', template_typ_code='cust-and-down-my-card-negative-purpose', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1374' AND lang_code='fra';
     UPDATE master.template
     SET "name"='Negative purpose to customize and download my card', descr='Negative purpose to customize and download my card', file_format_code='txt', model='velocity', file_txt='تم محاولة تنزيل البطاقة المخصصة', module_id='10006', module_name='Resident Services', template_typ_code='cust-and-down-my-card-negative-purpose', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1374' AND lang_code='ara';
     UPDATE master.template
     SET "name"='Positive purpose to order a physical card', descr='Positive purpose to order a physical card', file_format_code='txt', model='velocity', file_txt='Carte physique a été commandée', module_id='10006', module_name='Resident Services', template_typ_code='order-a-physical-card-positive purpose', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1375' AND lang_code='fra';
     UPDATE master.template
     SET "name"='Positive purpose to order a physical card', descr='Positive purpose to order a physical card', file_format_code='txt', model='velocity', file_txt='تم طلب البطاقة الفعلية', module_id='10006', module_name='Resident Services', template_typ_code='order-a-physical-card-positive purpose', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1375' AND lang_code='ara';
     UPDATE master.template
     SET "name"='Positive purpose to order a physical card', descr='Positive purpose to order a physical card', file_format_code='txt', model='velocity', file_txt='Physical card was ordered', module_id='10006', module_name='Resident Services', template_typ_code='order-a-physical-card-positive purpose', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1375' AND lang_code='eng';
     UPDATE master.template
     SET "name"='Negative purpose to order a physical card', descr='Negative purpose to order a physical card', file_format_code='txt', model='velocity', file_txt='An attempt was made to order a physical card', module_id='10006', module_name='Resident Services', template_typ_code='order-a-physical-card-negative purpose', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1376' AND lang_code='eng';
     UPDATE master.template
     SET "name"='Negative purpose to order a physical card', descr='Negative purpose to order a physical card', file_format_code='txt', model='velocity', file_txt='تمت محاولة طلب بطاقة فعلية', module_id='10006', module_name='Resident Services', template_typ_code='order-a-physical-card-negative purpose', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1376' AND lang_code='ara';
     UPDATE master.template
     SET "name"='Negative purpose to order a physical card', descr='Negative purpose to order a physical card', file_format_code='txt', model='velocity', file_txt='Une tentative a été faite pour commander une carte physique', module_id='10006', module_name='Resident Services', template_typ_code='order-a-physical-card-negative purpose', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1376' AND lang_code='fra';
     UPDATE master.template
     SET "name"='Positive purpose to share my credential with a partner', descr='Positive purpose to share my credential with a partner', file_format_code='txt', model='velocity', file_txt='Data was shared with a partner', module_id='10006', module_name='Resident Services', template_typ_code='share-cred-with-partner-positive-purpose', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1377' AND lang_code='eng';
     UPDATE master.template
     SET "name"='Positive purpose to share my credential with a partner', descr='Positive purpose to share my credential with a partner', file_format_code='txt', model='velocity', file_txt='Les données ont été partagées avec un partenaire', module_id='10006', module_name='Resident Services', template_typ_code='share-cred-with-partner-positive-purpose', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1377' AND lang_code='fra';
     UPDATE master.template
     SET "name"='Positive purpose to share my credential with a partner', descr='Positive purpose to share my credential with a partner', file_format_code='txt', model='velocity', file_txt='تم مشاركة البيانات مع شريك', module_id='10006', module_name='Resident Services', template_typ_code='share-cred-with-partner-positive-purpose', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1377' AND lang_code='ara';
     UPDATE master.template
     SET "name"='Negative purpose to share my credential with a partner', descr='Negative purpose to share my credential with a partner', file_format_code='txt', model='velocity', file_txt='Une tentative a été faite pour partager des données avec un partenaire', module_id='10006', module_name='Resident Services', template_typ_code='share-cred-with-partner-negative-purpose', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1378' AND lang_code='fra';
     UPDATE master.template
     SET "name"='Negative purpose to share my credential with a partner', descr='Negative purpose to share my credential with a partner', file_format_code='txt', model='velocity', file_txt='تمت محاولة مشاركة البيانات مع شريك', module_id='10006', module_name='Resident Services', template_typ_code='share-cred-with-partner-negative-purpose', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1378' AND lang_code='ara';
     UPDATE master.template
     SET "name"='Negative purpose to share my credential with a partner', descr='Negative purpose to share my credential with a partner', file_format_code='txt', model='velocity', file_txt='An attempt was made to share data with a partner', module_id='10006', module_name='Resident Services', template_typ_code='share-cred-with-partner-negative-purpose', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1378' AND lang_code='eng';
     UPDATE master.template
     SET "name"='Positive purpose to lock/unlock various authentication types', descr='Positive purpose to lock/unlock various authentication types', file_format_code='txt', model='velocity', file_txt='L''authentification $authType est $status', module_id='10006', module_name='Resident Services', template_typ_code='lock-unlock-auth-positive-purpose', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1379' AND lang_code='fra';
     UPDATE master.template
     SET "name"='Positive purpose to lock/unlock various authentication types', descr='Positive purpose to lock/unlock various authentication types', file_format_code='txt', model='velocity', file_txt='$authType authentication is $status', module_id='10006', module_name='Resident Services', template_typ_code='lock-unlock-auth-positive-purpose', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1379' AND lang_code='eng';
     UPDATE master.template
     SET "name"='Positive purpose to lock/unlock various authentication types', descr='Positive purpose to lock/unlock various authentication types', file_format_code='txt', model='velocity', file_txt='$authType التحقق هو $status', module_id='10006', module_name='Resident Services', template_typ_code='lock-unlock-auth-positive-purpose', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1379' AND lang_code='ara';
     UPDATE master.template
     SET "name"='Negative purpose to lock/unlock various authentication types', descr='Negative purpose to lock/unlock various authentication types', file_format_code='txt', model='velocity', file_txt='An attempt was made to lock/unlock authentication types', module_id='10006', module_name='Resident Services', template_typ_code='lock-unlock-auth-negative-purpose', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1380' AND lang_code='eng';
     UPDATE master.template
     SET "name"='Negative purpose to lock/unlock various authentication types', descr='Negative purpose to lock/unlock various authentication types', file_format_code='txt', model='velocity', file_txt='Une tentative a été faite pour verrouiller/déverrouiller les types d''authentification', module_id='10006', module_name='Resident Services', template_typ_code='lock-unlock-auth-negative-purpose', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1380' AND lang_code='fra';
     UPDATE master.template
     SET "name"='Negative purpose to lock/unlock various authentication types', descr='Negative purpose to lock/unlock various authentication types', file_format_code='txt', model='velocity', file_txt='تمت محاولة قفل/فتح أنواع التحقق', module_id='10006', module_name='Resident Services', template_typ_code='lock-unlock-auth-negative-purpose', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1380' AND lang_code='ara';
     UPDATE master.template
     SET "name"='Positive Purpose to self update demographic data', descr='Positive Purpose to self update demographic data', file_format_code='txt', model='velocity', file_txt='Data was updated successfully', module_id='10006', module_name='Resident Services', template_typ_code='update-demo-data-positive-purpose', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1381' AND lang_code='eng';
     UPDATE master.template
     SET "name"='Positive Purpose to self update demographic data', descr='Positive Purpose to self update demographic data', file_format_code='txt', model='velocity', file_txt='تم تحديث البيانات بنجاح', module_id='10006', module_name='Resident Services', template_typ_code='update-demo-data-positive-purpose', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1381' AND lang_code='ara';
     UPDATE master.template
     SET "name"='Positive Purpose to self update demographic data', descr='Positive Purpose to self update demographic data', file_format_code='txt', model='velocity', file_txt='Les données ont été mises à jour avec succès', module_id='10006', module_name='Resident Services', template_typ_code='update-demo-data-positive-purpose', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1381' AND lang_code='fra';
     UPDATE master.template
     SET "name"='Negative Purpose to self update demographic data', descr='Negative Purpose to self update demographic data', file_format_code='txt', model='velocity', file_txt='An attempt was made to update data', module_id='10006', module_name='Resident Services', template_typ_code='update-demo-data-negative-purpose', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1382' AND lang_code='eng';
     UPDATE master.template
     SET "name"='Negative Purpose to self update demographic data', descr='Negative Purpose to self update demographic data', file_format_code='txt', model='velocity', file_txt='تمت محاولة تحديث البيانات', module_id='10006', module_name='Resident Services', template_typ_code='update-demo-data-negative-purpose', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1382' AND lang_code='ara';
     UPDATE master.template
     SET "name"='Negative Purpose to self update demographic data', descr='Negative Purpose to self update demographic data', file_format_code='txt', model='velocity', file_txt='Une tentative a été faite pour mettre à jour les données', module_id='10006', module_name='Resident Services', template_typ_code='update-demo-data-negative-purpose', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1382' AND lang_code='fra';
     UPDATE master.template
     SET "name"='Positive Purpose to generate or revoke VIDs', descr='Positive Purpose to generate or revoke VIDs', file_format_code='txt', model='velocity', file_txt='VID était $actionPerformed', module_id='10006', module_name='Resident Services', template_typ_code='gen-or-revoke-vid-positive-purpose', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1383' AND lang_code='fra';
     UPDATE master.template
     SET "name"='Positive Purpose to generate or revoke VIDs', descr='Positive Purpose to generate or revoke VIDs', file_format_code='txt', model='velocity', file_txt='تم $actionPerformed VID', module_id='10006', module_name='Resident Services', template_typ_code='gen-or-revoke-vid-positive-purpose', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1383' AND lang_code='ara';
     UPDATE master.template
     SET "name"='Positive Purpose to generate or revoke VIDs', descr='Positive Purpose to generate or revoke VIDs', file_format_code='txt', model='velocity', file_txt='VID was $actionPerformed', module_id='10006', module_name='Resident Services', template_typ_code='gen-or-revoke-vid-positive-purpose', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1383' AND lang_code='eng';
     UPDATE master.template
     SET "name"='Negative Purpose to generate or revoke VIDs', descr='Negative Purpose to generate or revoke VIDs', file_format_code='txt', model='velocity', file_txt='Une tentative a été faite pour $actionPerformed VID', module_id='10006', module_name='Resident Services', template_typ_code='gen-or-revoke-vid-negative-purpose', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1384' AND lang_code='fra';
     UPDATE master.template
     SET "name"='Negative Purpose to generate or revoke VIDs', descr='Negative Purpose to generate or revoke VIDs', file_format_code='txt', model='velocity', file_txt='تمت محاولة $actionPerformed VID', module_id='10006', module_name='Resident Services', template_typ_code='gen-or-revoke-vid-negative-purpose', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1384' AND lang_code='ara';
     UPDATE master.template
     SET "name"='Negative Purpose to generate or revoke VIDs', descr='Negative Purpose to generate or revoke VIDs', file_format_code='txt', model='velocity', file_txt='An attempt was made to $actionPerformed VID', module_id='10006', module_name='Resident Services', template_typ_code='gen-or-revoke-vid-negative-purpose', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1384' AND lang_code='eng';
     UPDATE master.template
     SET "name"='Positive purpose to get my UIN card', descr='Positive purpose to get my UIN card', file_format_code='txt', model='velocity', file_txt='La carte UIN a été téléchargée', module_id='10006', module_name='Resident Services', template_typ_code='get-my-uin-card-positive-purpose', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1385' AND lang_code='fra';
     UPDATE master.template
     SET "name"='Positive purpose to get my UIN card', descr='Positive purpose to get my UIN card', file_format_code='txt', model='velocity', file_txt='تم تنزيل بطاقة UIN', module_id='10006', module_name='Resident Services', template_typ_code='get-my-uin-card-positive-purpose', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1385' AND lang_code='ara';
     UPDATE master.template
     SET "name"='Positive purpose to get my UIN card', descr='Positive purpose to get my UIN card', file_format_code='txt', model='velocity', file_txt='UIN card was downloaded', module_id='10006', module_name='Resident Services', template_typ_code='get-my-uin-card-positive-purpose', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1385' AND lang_code='eng';
     UPDATE master.template
     SET "name"='Negative purpose to get my UIN card', descr='Negative purpose to get my UIN card', file_format_code='txt', model='velocity', file_txt='Une tentative a été faite pour télécharger la carte UIN', module_id='10006', module_name='Resident Services', template_typ_code='get-my-uin-card-negative-purpose', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1386' AND lang_code='fra';
     UPDATE master.template
     SET "name"='Negative purpose to get my UIN card', descr='Negative purpose to get my UIN card', file_format_code='txt', model='velocity', file_txt='An attempt was made to download UIN card', module_id='10006', module_name='Resident Services', template_typ_code='get-my-uin-card-negative-purpose', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1386' AND lang_code='eng';
     UPDATE master.template
     SET "name"='Negative purpose to get my UIN card', descr='Negative purpose to get my UIN card', file_format_code='txt', model='velocity', file_txt='تمت محاولة تنزيل بطاقة UIN', module_id='10006', module_name='Resident Services', template_typ_code='get-my-uin-card-negative-purpose', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1386' AND lang_code='ara';
     UPDATE master.template
     SET "name"='Positive purpose to verify my phone number and email ID', descr='Positive purpose to verify my phone number and email ID', file_format_code='txt', model='velocity', file_txt='تم التحقق من $channel', module_id='10006', module_name='Resident Services', template_typ_code='verify-my-phone-email-positive-purpose', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1387' AND lang_code='ara';
     UPDATE master.template
     SET "name"='Positive purpose to verify my phone number and email ID', descr='Positive purpose to verify my phone number and email ID', file_format_code='txt', model='velocity', file_txt='$channel a été vérifié', module_id='10006', module_name='Resident Services', template_typ_code='verify-my-phone-email-positive-purpose', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1387' AND lang_code='fra';
     UPDATE master.template
     SET "name"='Positive purpose to verify my phone number and email ID', descr='Positive purpose to verify my phone number and email ID', file_format_code='txt', model='velocity', file_txt='$channel was verified', module_id='10006', module_name='Resident Services', template_typ_code='verify-my-phone-email-positive-purpose', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1387' AND lang_code='eng';
     UPDATE master.template
     SET "name"='Negative purpose to verify my phone number and email ID', descr='Negative purpose to verify my phone number and email ID', file_format_code='txt', model='velocity', file_txt='تمت محاولة التحقق من $channel', module_id='10006', module_name='Resident Services', template_typ_code='verify-my-phone-email-negative-purpose', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1388' AND lang_code='ara';
     UPDATE master.template
     SET "name"='Negative purpose to verify my phone number and email ID', descr='Negative purpose to verify my phone number and email ID', file_format_code='txt', model='velocity', file_txt='An attempt was made to verify $channel', module_id='10006', module_name='Resident Services', template_typ_code='verify-my-phone-email-negative-purpose', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1388' AND lang_code='eng';
     UPDATE master.template
     SET "name"='Negative purpose to verify my phone number and email ID', descr='Negative purpose to verify my phone number and email ID', file_format_code='txt', model='velocity', file_txt='Une tentative a été faite pour vérifier $channel', module_id='10006', module_name='Resident Services', template_typ_code='verify-my-phone-email-negative-purpose', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1388' AND lang_code='fra';
     UPDATE master.template
     SET "name"='Success summary to customize and download my card', descr='Success summary to customize and download my card', file_format_code='txt', model='velocity', file_txt='تم تنزيل البطاقة المخصصة بنجاح', module_id='10006', module_name='Resident Services', template_typ_code='cust-and-down-my-card-success-summary', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1389' AND lang_code='ara';
     UPDATE master.template
     SET "name"='Success summary to customize and download my card', descr='Success summary to customize and download my card', file_format_code='txt', model='velocity', file_txt='La carte personnalisée a été téléchargée avec succès', module_id='10006', module_name='Resident Services', template_typ_code='cust-and-down-my-card-success-summary', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1389' AND lang_code='fra';
     UPDATE master.template
     SET "name"='Success summary to customize and download my card', descr='Success summary to customize and download my card', file_format_code='txt', model='velocity', file_txt='Personalised card was downloaded successfully', module_id='10006', module_name='Resident Services', template_typ_code='cust-and-down-my-card-success-summary', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1389' AND lang_code='eng';
     UPDATE master.template
     SET "name"='Success summary to order a physical card', descr='Success summary to order a physical card', file_format_code='txt', model='velocity', file_txt='تم وضع طلب لبطاقة فعلية بنجاح مع الشريك', module_id='10006', module_name='Resident Services', template_typ_code='order-a-physical-card-success-summary', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1390' AND lang_code='ara';
     UPDATE master.template
     SET "name"='Success summary to order a physical card', descr='Success summary to order a physical card', file_format_code='txt', model='velocity', file_txt='Order for a physical card has been placed successfully with the partner', module_id='10006', module_name='Resident Services', template_typ_code='order-a-physical-card-success-summary', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1390' AND lang_code='eng';
     UPDATE master.template
     SET "name"='Success summary to order a physical card', descr='Success summary to order a physical card', file_format_code='txt', model='velocity', file_txt='La commande d''une carte physique a été placée avec succès auprès du partenaire', module_id='10006', module_name='Resident Services', template_typ_code='order-a-physical-card-success-summary', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1390' AND lang_code='fra';
     UPDATE master.template
     SET "name"='Success summary to share my credential with a partner', descr='Success summary to share my credential with a partner', file_format_code='txt', model='velocity', file_txt='Your data was shared successfully', module_id='10006', module_name='Resident Services', template_typ_code='share-cred-with-partner-success-summary', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1391' AND lang_code='eng';
     UPDATE master.template
     SET "name"='Success summary to share my credential with a partner', descr='Success summary to share my credential with a partner', file_format_code='txt', model='velocity', file_txt='Vos données ont été partagées avec succès', module_id='10006', module_name='Resident Services', template_typ_code='share-cred-with-partner-success-summary', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1391' AND lang_code='fra';
     UPDATE master.template
     SET "name"='Success summary to share my credential with a partner', descr='Success summary to share my credential with a partner', file_format_code='txt', model='velocity', file_txt='تم مشاركة بياناتك بنجاح', module_id='10006', module_name='Resident Services', template_typ_code='share-cred-with-partner-success-summary', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1391' AND lang_code='ara';
     UPDATE master.template
     SET "name"='Success summary to lock/unlock various authentication types', descr='Success summary to lock/unlock various authentication types', file_format_code='txt', model='velocity', file_txt='$authType authentication is $status', module_id='10006', module_name='Resident Services', template_typ_code='lock-unlock-auth-success-summary', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1392' AND lang_code='eng';
     UPDATE master.template
     SET "name"='Success summary to lock/unlock various authentication types', descr='Success summary to lock/unlock various authentication types', file_format_code='txt', model='velocity', file_txt='$authType التحقق هو $status', module_id='10006', module_name='Resident Services', template_typ_code='lock-unlock-auth-success-summary', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1392' AND lang_code='ara';
     UPDATE master.template
     SET "name"='Success summary to lock/unlock various authentication types', descr='Success summary to lock/unlock various authentication types', file_format_code='txt', model='velocity', file_txt='L''authentification $authType est $status', module_id='10006', module_name='Resident Services', template_typ_code='lock-unlock-auth-success-summary', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1392' AND lang_code='fra';
     UPDATE master.template
     SET "name"='Success summary to self update demographic data', descr='Success summary to self update demographic data', file_format_code='txt', model='velocity', file_txt='تم تحديث البيانات بنجاح', module_id='10006', module_name='Resident Services', template_typ_code='update-demo-data-success-summary', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1393' AND lang_code='ara';
     UPDATE master.template
     SET "name"='Success summary to self update demographic data', descr='Success summary to self update demographic data', file_format_code='txt', model='velocity', file_txt='Data was updated successfully', module_id='10006', module_name='Resident Services', template_typ_code='update-demo-data-success-summary', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1393' AND lang_code='eng';
     UPDATE master.template
     SET "name"='Success summary to self update demographic data', descr='Success summary to self update demographic data', file_format_code='txt', model='velocity', file_txt='Les données ont été mises à jour avec succès', module_id='10006', module_name='Resident Services', template_typ_code='update-demo-data-success-summary', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1393' AND lang_code='fra';
     UPDATE master.template
     SET "name"='Success summary to generate or revoke VIDs', descr='Success summary to generate or revoke VIDs', file_format_code='txt', model='velocity', file_txt='تم بنجاح $vidType VID $maskedVID بـ $actionPerformed', module_id='10006', module_name='Resident Services', template_typ_code='gen-or-revoke-vid-success-summary', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1394' AND lang_code='ara';
     UPDATE master.template
     SET "name"='Success summary to generate or revoke VIDs', descr='Success summary to generate or revoke VIDs', file_format_code='txt', model='velocity', file_txt='$vidType VID $maskedVID a été $actionPerformed avec succès', module_id='10006', module_name='Resident Services', template_typ_code='gen-or-revoke-vid-success-summary', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1394' AND lang_code='fra';
     UPDATE master.template
     SET "name"='Success summary to generate or revoke VIDs', descr='Success summary to generate or revoke VIDs', file_format_code='txt', model='velocity', file_txt='$vidType VID $maskedVID was $actionPerformed successfully', module_id='10006', module_name='Resident Services', template_typ_code='gen-or-revoke-vid-success-summary', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1394' AND lang_code='eng';
     UPDATE master.template
     SET "name"='Success summary to get my UIN card', descr='Success summary to get my UIN card', file_format_code='txt', model='velocity', file_txt='تم تنزيل بطاقة UIN بنجاح', module_id='10006', module_name='Resident Services', template_typ_code='get-my-uin-card-success-summary', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1395' AND lang_code='ara';
     UPDATE master.template
     SET "name"='Success summary to get my UIN card', descr='Success summary to get my UIN card', file_format_code='txt', model='velocity', file_txt='UIN card was downloaded successfully', module_id='10006', module_name='Resident Services', template_typ_code='get-my-uin-card-success-summary', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1395' AND lang_code='eng';
     UPDATE master.template
     SET "name"='Success summary to get my UIN card', descr='Success summary to get my UIN card', file_format_code='txt', model='velocity', file_txt='La carte UIN a été téléchargée avec succès', module_id='10006', module_name='Resident Services', template_typ_code='get-my-uin-card-success-summary', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1395' AND lang_code='fra';
     UPDATE master.template
     SET "name"='Success summary to verify my phone and email', descr='Success summary to verify my phone and email', file_format_code='txt', model='velocity', file_txt='Votre $channel a été vérifié avec succès', module_id='10006', module_name='Resident Services', template_typ_code='verify-my-phone-email-success-summary', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1396' AND lang_code='fra';
     UPDATE master.template
     SET "name"='Success summary to verify my phone and email', descr='Success summary to verify my phone and email', file_format_code='txt', model='velocity', file_txt='Your $channel was successfully verified', module_id='10006', module_name='Resident Services', template_typ_code='verify-my-phone-email-success-summary', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1396' AND lang_code='eng';
     UPDATE master.template
     SET "name"='Success summary to verify my phone and email', descr='Success summary to verify my phone and email', file_format_code='txt', model='velocity', file_txt='تم التحقق من $channel بنجاح', module_id='10006', module_name='Resident Services', template_typ_code='verify-my-phone-email-success-summary', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1396' AND lang_code='ara';
     UPDATE master.template
     SET "name"='Receiving OTP mail Subject', descr='Receiving OTP mail Subject', file_format_code='txt', model='velocity', file_txt='OTP | $eventDetails', module_id='10006', module_name='Resident Services', template_typ_code='receive-otp-mail-subject', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1397' AND lang_code='fra';
     UPDATE master.template
     SET "name"='Receiving OTP mail Subject', descr='Receiving OTP mail Subject', file_format_code='txt', model='velocity', file_txt='OTP | $eventDetails', module_id='10006', module_name='Resident Services', template_typ_code='receive-otp-mail-subject', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1397' AND lang_code='eng';
     UPDATE master.template
     SET "name"='Receiving OTP mail Subject', descr='Receiving OTP mail Subject', file_format_code='txt', model='velocity', file_txt='OTP | $eventDetails', module_id='10006', module_name='Resident Services', template_typ_code='receive-otp-mail-subject', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1397' AND lang_code='ara';
     UPDATE master.template
     SET "name"='Receiving OTP Mail Content', descr='Receiving OTP Mail Content', file_format_code='txt', model='velocity', file_txt='Cher $name, <br> Utilisez OTP $otp pour mettre à jour vos données.', module_id='10006', module_name='Resident Services', template_typ_code='receive-otp-mail-content', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1398' AND lang_code='fra';
     UPDATE master.template
     SET "name"='Receiving OTP Mail Content', descr='Receiving OTP Mail Content', file_format_code='txt', model='velocity', file_txt='عزيزي $name، <br> استخدم OTP $otp لتحديث بياناتك.', module_id='10006', module_name='Resident Services', template_typ_code='receive-otp-mail-content', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1398' AND lang_code='ara';
     UPDATE master.template
     SET "name"='Receiving OTP Mail Content', descr='Receiving OTP Mail Content', file_format_code='txt', model='velocity', file_txt='Dear $name, <br>
      Use OTP $otp to update your data.', module_id='10006', module_name='Resident Services', template_typ_code='receive-otp-mail-content', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1398' AND lang_code='eng';
     UPDATE master.template
     SET "name"='Receive OTP', descr='Receive OTP', file_format_code='txt', model='velocity', file_txt='$eventDetails: Use OTP $otp to update your data.', module_id='10006', module_name='Resident Services', template_typ_code='receive-otp', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1399' AND lang_code='eng';
     UPDATE master.template
     SET "name"='Receive OTP', descr='Receive OTP', file_format_code='txt', model='velocity', file_txt='$eventDetails: استخدم OTP $otp لتحديث بياناتك.', module_id='10006', module_name='Resident Services', template_typ_code='receive-otp', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1399' AND lang_code='ara';
     UPDATE master.template
     SET "name"='Receive OTP', descr='Receive OTP', file_format_code='txt', model='velocity', file_txt='$eventDetails: Utilisez OTP $otp pour mettre à jour vos données.', module_id='10006', module_name='Resident Services', template_typ_code='receive-otp', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1399' AND lang_code='fra';
     UPDATE master.template
     SET "name"='Vid Card Download Positive Purpose', descr='Vid Card Download Positive Purpose', file_format_code='txt', model='velocity', file_txt='VID card is available to download', module_id='10006', module_name='Resident Services', template_typ_code='vid-card-download-positive-purpose', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1400' AND lang_code='eng';
     UPDATE master.template
     SET "name"='Vid Card Download Negative Purpose', descr='Vid Card Download Negative Purpose', file_format_code='txt', model='velocity', file_txt='An attempt was made to download VID card', module_id='10006', module_name='Resident Services', template_typ_code='vid-card-download-negative-purpose', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1401' AND lang_code='eng';
     UPDATE master.template
     SET "name"='Vid Card Download Positive Summary', descr='Vid Card Download Positive Summary', file_format_code='txt', model='velocity', file_txt='VID card is available to download', module_id='10006', module_name='Resident Services', template_typ_code='vid-card-download-positive-summary', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1402' AND lang_code='eng';
     UPDATE master.template
     SET "name"='Phone', descr='Phone', file_format_code='txt', model='velocity', file_txt='Phone', module_id='10006', module_name='Resident Services', template_typ_code='mosip.phone.template.property', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1403' AND lang_code='eng';
     UPDATE master.template
     SET "name"='Email', descr='Email', file_format_code='txt', model='velocity', file_txt='Email', module_id='10006', module_name='Resident Services', template_typ_code='mosip.email.template.property', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1404' AND lang_code='eng';
     UPDATE master.template
     SET "name"='Request received email subject to download my VID card', descr='Request received email subject to download my VID card', file_format_code='txt', model='velocity', file_txt='Acknowledgement: $eventDetails | event ID: $eventId | Status: $status', module_id='10006', module_name='Resident Services', template_typ_code='vid-card-download-request-received-email-subject', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1405' AND lang_code='eng';
     UPDATE master.template
     SET "name"='Success email subject to download my VID card', descr='Success email subject to download my VID card', file_format_code='txt', model='velocity', file_txt='Acknowledgement: $eventDetails | event ID: $eventId | Status: $status', module_id='10006', module_name='Resident Services', template_typ_code='vid-card-download-success-email-subject', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1406' AND lang_code='eng';
     UPDATE master.template
     SET "name"='Failure email subject to download my VID card', descr='Failure email subject to download my VID card', file_format_code='txt', model='velocity', file_txt='Acknowledgement: $eventDetails | event ID: $eventId | Status: $status', module_id='10006', module_name='Resident Services', template_typ_code='vid-card-download-failure-email-subject', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1407' AND lang_code='eng';
     UPDATE master.template
     SET "name"='Request received email to download my VID card', descr='Request received email to download my VID card', file_format_code='txt', model='velocity', file_txt='Dear $name, <br>
      Your request to $eventDetails has been received on $date at $time. <br>
      Your event id is #$eventId. <br>
      Log in to the official website $trackServiceRequestLink for further details. <br>', module_id='10006', module_name='Resident Services', template_typ_code='vid-card-download-request-received-email-content', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1408' AND lang_code='eng';
     UPDATE master.template
     SET "name"='Success email to download my VID card', descr='Success email to download my VID card', file_format_code='txt', model='velocity', file_txt='Dear $name, <br>
      Your request to $eventDetails is completed successfully on $date at $time. <br>
      Your event id is #$eventId. <br>
      Log in to the official website $trackServiceRequestLink for further details. <br>', module_id='10006', module_name='Resident Services', template_typ_code='vid-card-download-success-email-content', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1409' AND lang_code='eng';
     UPDATE master.template
     SET "name"='Failure email to download my VID card', descr='Failure email to download my VID card', file_format_code='txt', model='velocity', file_txt='Dear $name, <br>
      Your request to $eventDetails raised on $date at $time has failed. <br>
      Your event id is #$eventId. <br>
      Log in to the official website $trackServiceRequestLink for further details. <br>', module_id='10006', module_name='Resident Services', template_typ_code='vid-card-download-failure-email-content', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1410' AND lang_code='eng';
     UPDATE master.template
     SET "name"='Request received sms to download my VID card', descr='Request received sms to download my VID card', file_format_code='txt', model='velocity', file_txt='Dear $name, <br>
      Your request to $eventDetails has been received on $date at $time. <br>
      Your event id is #$eventId. <br>
      Log in to the official website $trackServiceRequestLink for further details. <br>', module_id='10006', module_name='Resident Services', template_typ_code='vid-card-download-request-received_SMS', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1411' AND lang_code='eng';
     UPDATE master.template
     SET "name"='Success sms to download my VID card', descr='Success sms to download my VID card', file_format_code='txt', model='velocity', file_txt='Dear $name, <br>
      Your request to $eventDetails is completed successfully on $date at $time. <br>
      Your event id is #$eventId. <br>
      Log in to the official website $trackServiceRequestLink for further details. <br>', module_id='10006', module_name='Resident Services', template_typ_code='vid-card-download-success_SMS', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1412' AND lang_code='eng';
     UPDATE master.template
     SET "name"='Failure sms to download my VID card', descr='Failure sms to download my VID card', file_format_code='txt', model='velocity', file_txt='Dear $name, <br>
      Your request to $eventDetails raised on $date at $time has failed. <br>
      Your event id is #$eventId. <br>
      Log in to the official website $trackServiceRequestLink for further details. <br>', module_id='10006', module_name='Resident Services', template_typ_code='vid-card-download-failure_SMS', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1413' AND lang_code='eng';
     UPDATE master.template
     SET "name"='Email otp', descr='Email otp', file_format_code='txt', model='velocity', file_txt='Email OTP', module_id='10006', module_name='Resident Services', template_typ_code='mosip.otp-email.template.property', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1414' AND lang_code='eng';
     UPDATE master.template
     SET "name"='Phone otp', descr='Phone otp', file_format_code='txt', model='velocity', file_txt='Phone OTP', module_id='10006', module_name='Resident Services', template_typ_code='mosip.otp-phone.template.property', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1415' AND lang_code='eng';
     UPDATE master.template
     SET "name"='Demographic', descr='Demographic', file_format_code='txt', model='velocity', file_txt='Demographic', module_id='10006', module_name='Resident Services', template_typ_code='mosip.demo.template.property', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1416' AND lang_code='eng';
     UPDATE master.template
     SET "name"='Finger bio', descr='Finger bio', file_format_code='txt', model='velocity', file_txt='Fingerprint', module_id='10006', module_name='Resident Services', template_typ_code='mosip.bio-finger.template.property', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1417' AND lang_code='eng';
     UPDATE master.template
     SET "name"='Iris bio', descr='Iris bio', file_format_code='txt', model='velocity', file_txt='Iris', module_id='10006', module_name='Resident Services', template_typ_code='mosip.bio-iris.template.property', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1418' AND lang_code='eng';
     UPDATE master.template
     SET "name"='Face bio', descr='Face bio', file_format_code='txt', model='velocity', file_txt='Face', module_id='10006', module_name='Resident Services', template_typ_code='mosip.bio-face.template.property', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1419' AND lang_code='eng';
     UPDATE master.template
     SET "name"='Unlocked status', descr='Unlocked status', file_format_code='txt', model='velocity', file_txt='unlocked', module_id='10006', module_name='Resident Services', template_typ_code='mosip.unlocked.template.property', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1420' AND lang_code='eng';
     UPDATE master.template
     SET "name"='Locked status', descr='Locked status', file_format_code='txt', model='velocity', file_txt='locked', module_id='10006', module_name='Resident Services', template_typ_code='mosip.locked.template.property', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1421' AND lang_code='eng';
     UPDATE master.template
     SET "name"='Acknowledgement for share credential with a partner', descr='Acknowledgement for share credential with a partner', file_format_code='html', model='velocity', file_txt='<html>

      <head>

      </head>

      <body lang=EN-US link=blue vlink=#954F72 style=''tab-interval:.5in;word-wrap:break-word''>

      <div class=WordSection1>

      <div>

      <p class=MsoNormal align=center style=''text-align:center''><span lang=EN-IN><img
      width=200 height=100 id=Picture 2
      src=$pdfHeaderLogo alt=MOSIP></span></p>
      <p class=MsoNormal align=center style=''text-align:center''><span lang=EN-IN><img
      width=50 height=50 id=partnerlogo
      src=$partnerLogo alt=partner logo></span></p>

      <table class=MsoNormalTable align=center border=0 cellspacing=0 cellpadding=0 width=586
       style=''width:439.4pt;border-collapse:collapse;mso-yfti-tbllook:
       1184;mso-padding-alt:0in 0in 0in 0in''>
       <tr style=''mso-yfti-irow:0;mso-yfti-firstrow:yes''>
       <td width=586 colspan=2 valign=top style=''width:439.4pt;border:solid windowtext 1.0pt;
       padding:0in 5.4pt 0in 5.4pt''>
       <p class=MsoListParagraph align=center style=''margin:0in;text-align:center''><b><span
       lang=EN-IN style=''font-family:Verdana,sans-serif;color:black;background:
       white;mso-ansi-language:EN-IN''>Request details</span></b></p>
       </td>
       </tr>

       <tr style=''mso-yfti-irow:1''>
       <td width=298 valign=top style=''width:223.35pt;border:solid windowtext 1.0pt;
       border-top:none;padding:0in 5.4pt 0in 5.4pt''>
       <p class=MsoListParagraph style=''margin:0in;text-align:justify''><span
       lang=EN-IN style=''font-family:Verdana,sans-serif;color:black;background:
       white;mso-ansi-language:EN-IN''>Event request timestamp</span></p></td>

       <td width=288 valign=top style=''width:216.05pt;border-top:none;border-left:
       none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
       padding:0in 5.4pt 0in 5.4pt''>
       <p class=MsoListParagraph style=''margin:0in''><span lang=EN-IN
       style=''font-family:Verdana,sans-serif;color:black;background:white;
       mso-ansi-language:EN-IN''>$timestamp</span></p></td>
       </tr>

       <tr style=''mso-yfti-irow:1''>
       <td width=298 valign=top style=''width:223.35pt;border:solid windowtext 1.0pt;
       border-top:none;padding:0in 5.4pt 0in 5.4pt''>
       <p class=MsoListParagraph style=''margin:0in;text-align:justify''><span
       lang=EN-IN style=''font-family:Verdana,sans-serif;color:black;background:
       white;mso-ansi-language:EN-IN''>Event ID</span></p></td>

       <td width=288 valign=top style=''width:216.05pt;border-top:none;border-left:
       none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
       padding:0in 5.4pt 0in 5.4pt''>
       <p class=MsoListParagraph style=''margin:0in''><span lang=EN-IN
       style=''font-family:Verdana,sans-serif;color:black;background:white;
       mso-ansi-language:EN-IN''>$eventId</span></p></td>
       </tr>

       <tr style=''mso-yfti-irow:1''>
       <td width=298 valign=top style=''width:223.35pt;border:solid windowtext 1.0pt;
       border-top:none;padding:0in 5.4pt 0in 5.4pt''>
       <p class=MsoListParagraph style=''margin:0in;text-align:justify''><span
       lang=EN-IN style=''font-family:Verdana,sans-serif;color:black;background:
       white;mso-ansi-language:EN-IN''>Authentication mode</span></p></td>

       <td width=288 valign=top style=''width:216.05pt;border-top:none;border-left:
       none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
       padding:0in 5.4pt 0in 5.4pt''>
       <p class=MsoListParagraph style=''margin:0in''><span lang=EN-IN
       style=''font-family:Verdana,sans-serif;color:black;background:white;
       mso-ansi-language:EN-IN''>$authenticationMode</span></p></td>
       </tr>
       <tr style=''mso-yfti-irow:1''>
       <td width=298 valign=top style=''width:223.35pt;border:solid windowtext 1.0pt;
       border-top:none;padding:0in 5.4pt 0in 5.4pt''>
       <p class=MsoListParagraph style=''margin:0in;text-align:justify''><span
       lang=EN-IN style=''font-family:Verdana,sans-serif;color:black;background:
       white;mso-ansi-language:EN-IN''>Event type</span></p></td>

       <td width=288 valign=top style=''width:216.05pt;border-top:none;border-left:
       none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
       padding:0in 5.4pt 0in 5.4pt''>
       <p class=MsoListParagraph style=''margin:0in''><span lang=EN-IN
       style=''font-family:Verdana,sans-serif;color:black;background:white;
       mso-ansi-language:EN-IN''>$eventType</span></p></td>
       </tr>
       <tr style=''mso-yfti-irow:1''>
       <td width=298 valign=top style=''width:223.35pt;border:solid windowtext 1.0pt;
       border-top:none;padding:0in 5.4pt 0in 5.4pt''>
       <p class=MsoListParagraph style=''margin:0in;text-align:justify''><span
       lang=EN-IN style=''font-family:Verdana,sans-serif;color:black;background:
       white;mso-ansi-language:EN-IN''>Purpose</span></p></td>

       <td width=288 valign=top style=''width:216.05pt;border-top:none;border-left:
       none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
       padding:0in 5.4pt 0in 5.4pt''>
       <p class=MsoListParagraph style=''margin:0in''><span lang=EN-IN
       style=''font-family:Verdana,sans-serif;color:black;background:white;
       mso-ansi-language:EN-IN''>$purpose</span></p></td>
       </tr>
       <tr style=''mso-yfti-irow:1''>
       <td width=298 valign=top style=''width:223.35pt;border:solid windowtext 1.0pt;
       border-top:none;padding:0in 5.4pt 0in 5.4pt''>
       <p class=MsoListParagraph style=''margin:0in;text-align:justify''><span
       lang=EN-IN style=''font-family:Verdana,sans-serif;color:black;background:
       white;mso-ansi-language:EN-IN''>Event status</span></p></td>

       <td width=288 valign=top style=''width:216.05pt;border-top:none;border-left:
       none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
       padding:0in 5.4pt 0in 5.4pt''>
       <p class=MsoListParagraph style=''margin:0in''><span lang=EN-IN
       style=''font-family:Verdana,sans-serif;color:black;background:white;
       mso-ansi-language:EN-IN''>$eventStatus</span></p></td>
       </tr>
       <tr style=''mso-yfti-irow:1''>
       <td width=298 valign=top style=''width:223.35pt;border:solid windowtext 1.0pt;
       border-top:none;padding:0in 5.4pt 0in 5.4pt''>
       <p class=MsoListParagraph style=''margin:0in;text-align:justify''><span
       lang=EN-IN style=''font-family:Verdana,sans-serif;color:black;background:
       white;mso-ansi-language:EN-IN''>Summary</span></p></td>

       <td width=288 valign=top style=''width:216.05pt;border-top:none;border-left:
       none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
       padding:0in 5.4pt 0in 5.4pt''>
       <p class=MsoListParagraph style=''margin:0in''><span lang=EN-IN
       style=''font-family:Verdana,sans-serif;color:black;background:white;
       mso-ansi-language:EN-IN''>$summary</span></p></td>
       </tr>
       <tr style=''mso-yfti-irow:2''>
       <td width=586 colspan=2 valign=top style=''width:439.4pt;border:solid windowtext 1.0pt;
       border-top:none;padding:0in 5.4pt 0in 5.4pt''>
       <p class=MsoListParagraph align=center style=''margin:0in;text-align:center''><b><span
       lang=EN-IN style=''font-family:Verdana,sans-serif;color:black;background:
       white;mso-ansi-language:EN-IN''>Data share details</span></b></p>
       </td>
       </tr>
       <tr style=''mso-yfti-irow:3''>
       <td width=298 valign=top style=''width:223.35pt;border:solid windowtext 1.0pt;
       border-top:none;padding:0in 5.4pt 0in 5.4pt''>
       <p class=MsoListParagraph style=''margin:0in''><span lang=EN-IN
       style=''font-family:Verdana,sans-serif;color:black;background:white;
       mso-ansi-language:EN-IN''>Attributes shared with the partner</span></p>
       <p class=MsoListParagraph style=''margin:0in''><span lang=EN-IN
       style=''font-family:Verdana,sans-serif;color:black;background:white;
       mso-ansi-language:EN-IN''>&nbsp;</span></p>
       <p class=MsoListParagraph style=''margin:0in''><b><span lang=EN-IN
       style=''mso-ansi-language:EN-IN''>&nbsp;</span></b></p>
       </td>
       <td width=288 valign=top style=''width:216.05pt;border-top:none;border-left:
       none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
       padding:0in 5.4pt 0in 5.4pt''>
       <p class=MsoListParagraph style=''margin:0in''><span lang=EN-IN
       style=''font-family:Verdana,sans-serif;color:black;background:white;
       mso-ansi-language:EN-IN''>$attributeList</span></span></p>
       <p class=MsoListParagraph style=''margin:0in''><b><span lang=EN-IN
       style=''mso-ansi-language:EN-IN''>&nbsp;</span></b></p>
       </td>
       </tr>
       <tr style=''mso-yfti-irow:4''>
       <td width=586 colspan=2 valign=top style=''width:439.4pt;border:solid windowtext 1.0pt;
       border-top:none;padding:0in 5.4pt 0in 5.4pt''>
       <p class=MsoListParagraph align=center style=''margin:0in;text-align:center''><b><span
       lang=EN-IN style=''font-family:Verdana,sans-serif;color:black;background:
       white;mso-ansi-language:EN-IN''>Partner details</span></b></p>
       </td>
       </tr>
       <tr style=''mso-yfti-irow:5;mso-yfti-lastrow:yes''>
       <td width=298 valign=top style=''width:223.35pt;border:solid windowtext 1.0pt;
       border-top:none;padding:0in 5.4pt 0in 5.4pt''>
       <p class=MsoListParagraph style=''margin:0in''><span lang=EN-IN
       style=''font-family:Verdana,sans-serif;color:black;background:white;
       mso-ansi-language:EN-IN''>Partner name</span></p>
       </td>
       <td width=288 valign=top style=''width:216.05pt;border-top:none;border-left:
       none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
       padding:0in 5.4pt 0in 5.4pt''>
       <p class=MsoListParagraph style=''margin:0in''><span lang=EN-IN
       style=''font-family:Verdana,sans-serif;color:black;background:white;
       mso-ansi-language:EN-IN''>$partnerName</span><o:p></o:p></span></p>
       </td>
       </tr>
      </table>

      <p class=MsoListParagraph align=center style=''text-align:center''><span
      lang=EN-IN style=''font-family:Verdana,sans-serif;color:black;background:white;
      mso-ansi-language:EN-IN''>&nbsp;</span></p>

      <p class=MsoListParagraph align=center style=''text-align:center''><span
      lang=EN-IN style=''font-family:Verdana,sans-serif;color:black;background:white;
      mso-ansi-language:EN-IN''>To view the status of your event, return to&nbsp;</span><span
      lang=EN-IN style=''mso-ansi-language:EN-IN''><a
      href=><span
      style=''font-family:Verdana,sans-serif;color:#004B91;background:white''><a href=$trackServiceRequestLink>event summary</a></span></a></span><span lang=EN-IN style=''font-family:Verdana,sans-serif;
      color:black;background:white;mso-ansi-language:EN-IN''>.</span></p>

      <p class=MsoNormal style=''mso-margin-top-alt:auto;mso-margin-bottom-alt:auto''><span
      lang=EN-IN style=''mso-ansi-language:EN-IN''>&nbsp;</span></p>

      </div>

      </div>

      </body>

      </html>', module_id='10006', module_name='Resident Services', template_typ_code='acknowledgement-share-cred-with-partner', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1495' AND lang_code='eng';
     UPDATE master.template
     SET "name"='List of supporting documents', descr='List of supporting documents', file_format_code='html', model='velocity', file_txt='<html>

      <head>

      </head>

      <body lang=EN-US style=''word-wrap:break-word''>

      <div class=WordSection1>

      <p class=MsoNormal align=center style=''text-align:center''><span lang=EN-IN><img
      width=200 height=100 id=Picture 2
      src=$pdfHeaderLogo alt=MOSIP></span></p>

      <p class=MsoNormal align=center style=''text-align:center''><b><span
      style=''font-size:16.0pt;line-height:107%;font-family:Arial,sans-serif;
      color:#1D1C1D;background:yellow''>Supporting documents</span></b></p>

      <table class=MsoTableGrid border=1 cellspacing=0 cellpadding=0
       style=''border-collapse:collapse;border:none''>
       <tr>
       <td width=623 colspan=2 valign=top style=''width:467.5pt;border:solid windowtext 1.0pt;
       padding:0in 5.4pt 0in 5.4pt''>
       <p class=MsoNormal align=center style=''margin-bottom:0in;text-align:center;
       line-height:normal''><b><span style=''font-size:14.0pt;font-family:Arial,sans-serif;
       color:#1D1C1D;background:aqua''>POI (</span></b><b><span style=''font-size:
       14.0pt;background:aqua''>Proof of Identity)</span></b></p>
       <p class=MsoNormal align=center style=''margin-bottom:0in;text-align:center;
       line-height:normal''><b><span style=''font-size:14.0pt;background:white''>&nbsp;</span></b></p>
       </td>
       </tr>
       <tr style=''height:35.85pt''>
       <td width=217 valign=top style=''width:162.8pt;border:solid windowtext 1.0pt;
       border-top:none;padding:0in 5.4pt 0in 5.4pt;height:35.85pt''>
       <p class=MsoNormal align=center style=''margin-bottom:0in;text-align:center;
       line-height:normal''><b><span style=''font-size:11.5pt;font-family:Arial,sans-serif;
       color:#1D1C1D;background:white''>The POI documents specification:</span></b></p>
       </td>
       <td width=406 valign=top style=''width:304.7pt;border-top:none;border-left:
       none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
       padding:0in 5.4pt 0in 5.4pt;height:35.85pt''>
       <p class=MsoListParagraphCxSpFirst style=''margin-bottom:0in;text-indent:-.25in;
       line-height:normal''><span style=''font:7.0pt Times New Roman''>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       </span>1. It should contain the Full Name and a clear Photo </p>
       <p class=MsoListParagraphCxSpLast style=''margin-bottom:0in;text-indent:-.25in;
       line-height:normal''><span style=''font:7.0pt Times New Roman''>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       </span>2. It should be valid for at least the next 6 months</p>
       </td>
       </tr>
       <tr>
       <td width=217 valign=top style=''width:162.8pt;border:solid windowtext 1.0pt;
       border-top:none;padding:0in 5.4pt 0in 5.4pt''>
       <p class=MsoNormal align=center style=''margin-bottom:0in;text-align:center;
       line-height:normal''><b><span style=''font-size:11.5pt;font-family:Arial,sans-serif;
       color:#1D1C1D;background:white''>Acceptable document:</span></b></p>
       <p class=MsoNormal align=center style=''margin-bottom:0in;text-align:center;
       line-height:normal''><span style=''font-size:16.0pt;font-family:Arial,sans-serif;
       color:#1D1C1D;background:white''>&nbsp;</span></p>
       </td>
       <td width=406 valign=top style=''width:304.7pt;border-top:none;border-left:
       none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
       padding:0in 5.4pt 0in 5.4pt''>
       <p class=MsoListParagraphCxSpFirst style=''margin-bottom:0in;text-indent:-.25in;
       line-height:normal''><span style=''font:7.0pt Times New Roman''>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       </span>1. Passport </p>
       <p class=MsoListParagraphCxSpMiddle style=''margin-bottom:0in;text-indent:
       -.25in;line-height:normal''><span style=''font:7.0pt Times New Roman''>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       </span>2. PAN Card/ e-PAN </p>
       <p class=MsoListParagraphCxSpMiddle style=''margin-bottom:0in;text-indent:
       -.25in;line-height:normal''><span style=''font:7.0pt Times New Roman''>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       </span>3. Ration / PDS Photo Card</p>
       <p class=MsoListParagraphCxSpMiddle style=''margin-bottom:0in;text-indent:
       -.25in;line-height:normal''><span style=''font:7.0pt Times New Roman''>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       </span>4. Voter ID/ e-Voter ID </p>
       <p class=MsoListParagraphCxSpMiddle style=''margin-bottom:0in;text-indent:
       -.25in;line-height:normal''><span style=''font:7.0pt Times New Roman''>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       </span>5. Driving License </p>
       <p class=MsoListParagraphCxSpMiddle style=''margin-bottom:0in;text-indent:
       -.25in;line-height:normal''><span style=''font:7.0pt Times New Roman''>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       </span>6. Service photo identity card issued by Central Govt./ State Govt./ UT
       Govt./ PSU/ Banks </p>
       <p class=MsoListParagraphCxSpMiddle style=''margin-bottom:0in;text-indent:
       -.25in;line-height:normal''><span style=''font:7.0pt Times New Roman''>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       </span>7. Pensioner Photo Card/Freedom Fighter Photo Card </p>
       <p class=MsoListParagraphCxSpMiddle style=''margin-bottom:0in;text-indent:
       -.25in;line-height:normal''><span style=''font:7.0pt Times New Roman''>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       </span>8. Disability ID Card/ handicapped medical certificate issued by the
       respective Central/ State/ UT Governments</p>
       <p class=MsoListParagraphCxSpMiddle style=''margin-bottom:0in;text-indent:
       -.25in;line-height:normal''><span style=''font:7.0pt Times New Roman''>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       </span>9. Bank Pass Book having name and Photograph Cross Stamped by bank
       official</p>
       <p class=MsoListParagraphCxSpLast style=''margin-bottom:0in;text-indent:-.25in;
       line-height:normal''><span style=''font:7.0pt Times New Roman''>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       </span>10. Valid Visa along with Foreign Passport</p>
       </td>
       </tr>
      </table>

      <p class=MsoNormal><span style=''font-size:16.0pt;line-height:107%;font-family:
      Arial,sans-serif;color:#1D1C1D;background:white''>&nbsp;</span></p>

      <table class=MsoTableGrid border=1 cellspacing=0 cellpadding=0
       style=''border-collapse:collapse;border:none''>
       <tr>
       <td width=623 colspan=2 valign=top style=''width:467.5pt;border:solid windowtext 1.0pt;
       padding:0in 5.4pt 0in 5.4pt''>
       <p class=MsoNormal align=center style=''margin-bottom:0in;text-align:center;
       line-height:normal''><b><span style=''font-size:14.0pt;font-family:Arial,sans-serif;
       color:#1D1C1D;background:aqua''>POA (Proof of Address)</span></b></p>
       <p class=MsoNormal align=center style=''margin-bottom:0in;text-align:center;
       line-height:normal''><b><span style=''font-size:14.0pt;font-family:Arial,sans-serif;
       color:#1D1C1D;background:white''>&nbsp;</span></b></p>
       </td>
       </tr>
       <tr style=''height:35.3pt''>
       <td width=217 valign=top style=''width:162.8pt;border:solid windowtext 1.0pt;
       border-top:none;padding:0in 5.4pt 0in 5.4pt;height:35.3pt''>
       <p class=MsoNormal align=center style=''margin-bottom:0in;text-align:center;
       line-height:normal''><b><span style=''font-size:11.5pt;font-family:Arial,sans-serif;
       color:#1D1C1D;background:white''>The POA documents specification:</span></b></p>
       </td>
       <td width=406 valign=top style=''width:304.7pt;border-top:none;border-left:
       none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
       padding:0in 5.4pt 0in 5.4pt;height:35.3pt''>
       <p class=MsoListParagraphCxSpFirst style=''margin-bottom:0in;text-indent:-.25in;
       line-height:normal''><span style=''font:7.0pt Times New Roman''>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       </span>1. It should contain Full Name and full address </p>
       <p class=MsoListParagraphCxSpLast style=''margin-bottom:0in;text-indent:-.25in;
       line-height:normal''><span style=''font:7.0pt Times New Roman''>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       </span>2. It should be valid for at least the next 6 months</p>
       </td>
       </tr>
       <tr>
       <td width=217 valign=top style=''width:162.8pt;border:solid windowtext 1.0pt;
       border-top:none;padding:0in 5.4pt 0in 5.4pt''>
       <p class=MsoNormal align=center style=''margin-bottom:0in;text-align:center;
       line-height:normal''><b><span style=''font-size:11.5pt;font-family:Arial,sans-serif;
       color:#1D1C1D;background:white''>Acceptable document:</span></b></p>
       <p class=MsoNormal align=center style=''margin-bottom:0in;text-align:center;
       line-height:normal''><span style=''font-size:16.0pt;font-family:Arial,sans-serif;
       color:#1D1C1D;background:white''>&nbsp;</span></p>
       </td>
       <td width=406 valign=top style=''width:304.7pt;border-top:none;border-left:
       none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
       padding:0in 5.4pt 0in 5.4pt''>
       <p class=MsoListParagraphCxSpFirst style=''margin-bottom:0in;text-indent:-.25in;
       line-height:normal''><span style=''font:7.0pt Times New Roman''>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       </span>1. Passport/ Passport of Spouse/ Passport of Parents (in case of Minor)</p>
       <p class=MsoListParagraphCxSpMiddle style=''margin-bottom:0in;text-indent:-.25in;
       line-height:normal''><span style=''font:7.0pt Times New Roman''>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       </span>2. Bank Statement (with Bank stamp &amp; signature of bank official)/ Passbook/ Post
       Office Account Statement/ Passbook</p>
       <p class=MsoListParagraphCxSpMiddle style=''margin-bottom:0in;text-indent:-.25in;
       line-height:normal''><span style=''font:7.0pt Times New Roman''>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       </span>3. Ration Card</p>
       <p class=MsoListParagraphCxSpMiddle style=''margin-bottom:0in;text-indent:-.25in;
       line-height:normal''><span style=''font:7.0pt Times New Roman''>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       </span>4. Voter ID/ e-Voter ID</p>
       <p class=MsoListParagraphCxSpMiddle style=''margin-bottom:0in;text-indent:-.25in;
       line-height:normal''><span style=''font:7.0pt Times New Roman''>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       </span>5. Driving License</p>
       <p class=MsoListParagraphCxSpMiddle style=''margin-bottom:0in;text-indent:-.25in;line-height:normal''><span
       style=''font:7.0pt Times New Roman''>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>6. Service
       photo identity card issued by PSU/ Banks/ State/ Central Governments</p>
       <p class=MsoListParagraphCxSpMiddle style=''margin-bottom:0in;text-indent:-.25in;line-height:normal''><span
       style=''font:7.0pt Times New Roman''>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>7. Pensioner
       Card/ Freedom Fighter Card</p>
       <p class=MsoListParagraphCxSpMiddle style=''margin-bottom:0in;text-indent:-.25in;line-height:normal''><span
       style=''font:7.0pt Times New Roman''>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>8. Kissan
       Passbook </p>
       <p class=MsoListParagraphCxSpMiddle style=''margin-bottom:0in;text-indent:-.25in;line-height:normal''><span
       style=''font:7.0pt Times New Roman''>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>9. CGHS/
       ECHS/ ESIC/ Medi-Claim Card with Photo issued by State/ Central Govts./ PSUs </p>
       <p class=MsoListParagraphCxSpMiddle style=''margin-bottom:0in;text-indent:-.25in;line-height:normal''><span
       style=''font:7.0pt Times New Roman''>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>10. Disability ID Card/
       handicapped medical certificate issued by the respective State/ UT
       Governments/ Administrations/ Central Govt. </p>
       <p class=MsoListParagraphCxSpLast style=''margin-bottom:0in;text-indent:-.25in;line-height:normal''><span
       style=''font:7.0pt Times New Roman''>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>11. Photo ID Card/ Certificate
       having address issued by Central/State Govt.</p>
       </td>
       </tr>
      </table>

      <p class=MsoNormal><span style=''font-size:16.0pt;line-height:107%;font-family:
      Arial,sans-serif;color:#1D1C1D;background:white''>&nbsp;</span></p>

      <p class=MsoNormal><span style=''font-size:16.0pt;line-height:107%;font-family:
      Arial,sans-serif;color:#1D1C1D;background:white''>&nbsp;</span></p>

      <table class=MsoTableGrid border=1 cellspacing=0 cellpadding=0
       style=''border-collapse:collapse;border:none''>
       <tr>
       <td width=623 colspan=2 valign=top style=''width:467.5pt;border:solid windowtext 1.0pt;
       padding:0in 5.4pt 0in 5.4pt''>
       <p class=MsoNormal align=center style=''margin-bottom:0in;text-align:center;
       line-height:normal''><b><span style=''font-size:14.0pt;font-family:Arial,sans-serif;
       color:#1D1C1D;background:aqua''>POR (Proof of Relationship)</span></b></p>
       <p class=MsoNormal align=center style=''margin-bottom:0in;text-align:center;
       line-height:normal''><span style=''background:white''>&nbsp;</span></p>
       </td>
       </tr>
       <tr>
       <td width=274 valign=top style=''width:205.3pt;border:solid windowtext 1.0pt;
       border-top:none;padding:0in 5.4pt 0in 5.4pt''>
       <p class=MsoNormal align=center style=''margin-bottom:0in;text-align:center;
       line-height:normal''><b><span style=''font-size:11.5pt;font-family:Arial,sans-serif;
       color:#1D1C1D;background:white''>The POR documents specification:</span></b></p>
       </td>
       <td width=350 valign=top style=''width:262.2pt;border-top:none;border-left:
       none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
       padding:0in 5.4pt 0in 5.4pt''>
       <p class=MsoListParagraphCxSpFirst style=''margin-bottom:0in;text-indent:-.25in;
       line-height:normal''><span style=''font:7.0pt Times New Roman''>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       </span>1. It should contain the Introducer’s Full Name and a clear Photo</p>
       <p class=MsoListParagraphCxSpMiddle style=''margin-bottom:0in;text-indent:
       -.25in;line-height:normal''><span style=''font:7.0pt Times New Roman''>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       </span>2. It should contain the applicant’s Full Name and a clear Photo</p>
       <p class=MsoListParagraphCxSpMiddle style=''margin-bottom:0in;text-indent:
       -.25in;line-height:normal''><span style=''font:7.0pt Times New Roman''>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       </span>3. The relationship between the Introducer and resident should be clearly
       mentioned</p>
       <p class=MsoListParagraphCxSpLast style=''margin-bottom:0in;text-indent:-.25in;
       line-height:normal''><span style=''font:7.0pt Times New Roman''>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       </span>4. All the produced documents should be valid for at least the next 6
       months</p>
       </td>
       </tr>
       <tr>
       <td width=274 valign=top style=''width:205.3pt;border:solid windowtext 1.0pt;
       border-top:none;padding:0in 5.4pt 0in 5.4pt''>
       <p class=MsoNormal align=center style=''margin-bottom:0in;text-align:center;
       line-height:normal''><b><span style=''font-size:11.5pt;font-family:Arial,sans-serif;
       color:#1D1C1D;background:white''>Acceptable document:</span></b></p>
       <p class=MsoNormal align=center style=''margin-bottom:0in;text-align:center;
       line-height:normal''><span style=''font-size:16.0pt;font-family:Arial,sans-serif;
       color:#1D1C1D;background:white''>&nbsp;</span></p>
       </td>
       <td width=350 valign=top style=''width:262.2pt;border-top:none;border-left:
       none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
       padding:0in 5.4pt 0in 5.4pt''>
       <p class=MsoListParagraphCxSpFirst style=''margin-bottom:0in;text-indent:-.25in;
       line-height:normal''><span style=''font:7.0pt Times New Roman''>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       </span>1. Passport of Spouse/ Passport of Parents (in case of Minor) </p>
       <p class=MsoListParagraphCxSpMiddle style=''margin-bottom:0in;text-indent:
       -.25in;line-height:normal''><span style=''font:7.0pt Times New Roman''>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       </span>2. Ration card/PDS Card</p>
       <p class=MsoListParagraphCxSpMiddle style=''margin-bottom:0in;text-indent:
       -.25in;line-height:normal''><span style=''font:7.0pt Times New Roman''>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       </span>3. Medi-Claim Card with Photo issued by Centre/ State Govts./ PSUs </p>
       <p class=MsoListParagraphCxSpMiddle style=''margin-bottom:0in;text-indent:
       -.25in;line-height:normal''><span style=''font:7.0pt Times New Roman''>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       </span>4. Pension Card</p>
       <p class=MsoListParagraphCxSpMiddle style=''margin-bottom:0in;text-indent:
       -.25in;line-height:normal''><span style=''font:7.0pt Times New Roman''>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       </span>5. Birth Certificate issued by Registrar of Birth, Municipal Corporation,
       and other notified local government bodies </p>
       <p class=MsoListParagraphCxSpMiddle style=''margin-bottom:0in;text-indent:
       -.25in;line-height:normal''><span style=''font:7.0pt Times New Roman''>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       </span>6. Any other Central/ State government-issued family entitlement document
       </p>
       <p class=MsoListParagraphCxSpMiddle style=''margin-bottom:0in;text-indent:
       -.25in;line-height:normal''><span style=''font:7.0pt Times New Roman''>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       </span>7. Marriage Certificate issued by the government </p>
       <p class=MsoListParagraphCxSpMiddle style=''margin-bottom:0in;text-indent:
       -.25in;line-height:normal''><span style=''font:7.0pt Times New Roman''>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       </span>8. Photo ID card issued by Central/ State Govt. like ARMY canteen card
       etc. </p>
       <p class=MsoListParagraphCxSpMiddle style=''margin-bottom:0in;text-indent:
       -.25in;line-height:normal''><span style=''font:7.0pt Times New Roman''>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       </span>9. Discharge card/ slip issued by Government/ Private Hospitals for birth
       of a child (only for child aged between 0-5 years) </p>
       <p class=MsoListParagraphCxSpLast style=''margin-bottom:0in;text-indent:-.25in;
       line-height:normal''><span style=''font:7.0pt Times New Roman''>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       </span>10. Self-declaration from the Head of Family (HoF) certifying the
       relationship with the resident residing at the same address as HoF<span
       style=''font-size:11.5pt;font-family:Arial,sans-serif;color:#1D1C1D;
       background:white''> </span></p>
       </td>
       </tr>
      </table>

      <p class=MsoNormal><span style=''font-size:16.0pt;line-height:107%;font-family:
      Arial,sans-serif;color:#1D1C1D;background:white''>&nbsp;</span></p>

      <p class=MsoNormal><span style=''font-size:16.0pt;line-height:107%;font-family:
      Arial,sans-serif;color:#1D1C1D;background:white''>&nbsp;</span></p>

      <table class=MsoTableGrid border=1 cellspacing=0 cellpadding=0
       style=''border-collapse:collapse;border:none''>
       <tr>
       <td width=623 colspan=2 valign=top style=''width:467.5pt;border:solid windowtext 1.0pt;
       padding:0in 5.4pt 0in 5.4pt''>
       <p class=MsoNormal align=center style=''margin-bottom:0in;text-align:center;
       line-height:normal''><b><span style=''font-size:14.0pt;font-family:Arial,sans-serif;
       color:#1D1C1D;background:aqua''>DOB (Date of Birth)</span></b></p>
       <p class=MsoNormal align=center style=''margin-bottom:0in;text-align:center;
       line-height:normal''><span style=''background:white''>&nbsp;</span></p>
       </td>
       </tr>
       <tr style=''height:34.7pt''>
       <td width=217 valign=top style=''width:162.8pt;border:solid windowtext 1.0pt;
       border-top:none;padding:0in 5.4pt 0in 5.4pt;height:34.7pt''>
       <p class=MsoNormal align=center style=''margin-bottom:0in;text-align:center;
       line-height:normal''><b><span style=''font-size:11.5pt;font-family:Arial,sans-serif;
       color:#1D1C1D;background:white''>The DOB documents specification:</span></b></p>
       </td>
       <td width=406 valign=top style=''width:304.7pt;border-top:none;border-left:
       none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
       padding:0in 5.4pt 0in 5.4pt;height:34.7pt''>
       <p class=MsoListParagraphCxSpFirst style=''margin-bottom:0in;text-indent:-.25in;line-height:normal''><span
       style=''font:7.0pt Times New Roman''>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>1. It
       should contain Full Name, a clear Photo and DOB</p>
       <p class=MsoListParagraphCxSpLast style=''margin-bottom:0in;text-indent:-.25in;line-height:normal''><span
       style=''font:7.0pt Times New Roman''>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>2. It
       should be valid for at least the next 6 months</p>
       </td>
       </tr>
       <tr>
       <td width=217 valign=top style=''width:162.8pt;border:solid windowtext 1.0pt;
       border-top:none;padding:0in 5.4pt 0in 5.4pt''>
       <p class=MsoNormal align=center style=''margin-bottom:0in;text-align:center;
       line-height:normal''><b><span style=''font-size:11.5pt;font-family:Arial,sans-serif;
       color:#1D1C1D;background:white''>Acceptable document:</span></b></p>
       <p class=MsoNormal align=center style=''margin-bottom:0in;text-align:center;
       line-height:normal''><span style=''font-size:16.0pt;font-family:Arial,sans-serif;
       color:#1D1C1D;background:white''>&nbsp;</span></p>
       </td>
       <td width=406 valign=top style=''width:304.7pt;border-top:none;border-left:
       none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
       padding:0in 5.4pt 0in 5.4pt''>
       <p class=MsoListParagraphCxSpFirst style=''margin-bottom:0in;text-indent:-.25in;line-height:normal''><span
       style=''font:7.0pt Times New Roman''>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>1. Birth Certificate </p>
       <p class=MsoListParagraphCxSpMiddle style=''margin-bottom:0in;text-indent:-.25in;line-height:normal''><span
       style=''font:7.0pt Times New Roman''>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>2. Passport</p>
       <p class=MsoListParagraphCxSpMiddle style=''margin-bottom:0in;text-indent:-.25in;line-height:normal''><span
       style=''font:7.0pt Times New Roman''>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>3. PAN Card/e-PAN</p>
       <p class=MsoListParagraphCxSpMiddle style=''margin-bottom:0in;text-indent:-.25in;line-height:normal''><span
       style=''font:7.0pt Times New Roman''>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>4. Service photo
       identity card issued by Central Govt./State Govt./UT Govt./PSU/Banks </p>
       <p class=MsoListParagraphCxSpMiddle style=''margin-bottom:0in;text-indent:-.25in;line-height:normal''><span
       style=''font:7.0pt Times New Roman''>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>5. Photo ID card having
       Date of Birth, issued by Recognized Educational Institution</p>
       <p class=MsoListParagraphCxSpMiddle style=''margin-bottom:0in;text-indent:-.25in;line-height:normal''><span
       style=''font:7.0pt Times New Roman''>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>6. Valid School
       Identity card/Identity Card issued by recognized educational institutions</p>
       <p class=MsoListParagraphCxSpMiddle style=''margin-bottom:0in;text-indent:-.25in;line-height:normal''><span
       style=''font:7.0pt Times New Roman''>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>7. Gas Connection Bill</p>
       <p class=MsoListParagraphCxSpMiddle style=''margin-bottom:0in;text-indent:-.25in;line-height:normal''><span
       style=''font:7.0pt Times New Roman''>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>8. Marriage Certificate
       issued by the Government containing Name and address</p>
       <p class=MsoListParagraphCxSpMiddle style=''margin-bottom:0in;text-indent:-.25in;line-height:normal''><span
       style=''font:7.0pt Times New Roman''>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>9. Registered Sale/
       Rent Agreement</p>
       <p class=MsoListParagraphCxSpLast style=''margin-bottom:0in;text-indent:-.25in;line-height:normal''><span
       style=''font:7.0pt Times New Roman''>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>10. Telephone Landline
       Bill/ Phone (Postpaid Mobile) Bill/ Broadband Bill</p>
       </td>
       </tr>
      </table>

      <p class=MsoNormal style=''margin-bottom:0in''><span style=''font-size:11.5pt;
      line-height:107%;font-family:Arial,sans-serif;color:#1D1C1D;background:white''>&nbsp;</span></p>

      <p class=MsoNormal style=''margin-bottom:0in''><span style=''font-size:11.5pt;
      line-height:107%;font-family:Arial,sans-serif;color:#1D1C1D;background:white''>&nbsp;</span></p>

      <p class=MsoNormal style=''margin-bottom:0in''><span style=''font-size:11.5pt;
      line-height:107%;font-family:Arial,sans-serif;color:#1D1C1D;background:white''>&nbsp;</span></p>

      </div>

      </body>

      </html>', module_id='10006', module_name='Resident Services', template_typ_code='supporting-docs-list', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1496' AND lang_code='eng';
     UPDATE master.template
     SET "name"='Acknowledgement for manage my vid', descr='Acknowledgement for manage my vid', file_format_code='html', model='velocity', file_txt='<html>

      <head>

      </head>

      <body lang=EN-US link=blue vlink=#954F72 style=''tab-interval:.5in;word-wrap:break-word''>

      <div class=WordSection1>

      <div>

      <p class=MsoNormal align=center style=''text-align:center''><span lang=EN-IN><img
      width=200 height=100 id=Picture 2
      src=$pdfHeaderLogo alt=MOSIP></span></p>
      <p class=MsoNormal align=center style=''text-align:center''><span lang=EN-IN><img
      width=50 height=50 id=partnerlogo
      src=$partnerLogo alt=partner logo></span></p>

      <table class=MsoNormalTable align=center border=0 cellspacing=0 cellpadding=0 width=586
       style=''width:439.4pt;border-collapse:collapse;mso-yfti-tbllook:
       1184;mso-padding-alt:0in 0in 0in 0in''>
       <tr style=''mso-yfti-irow:0;mso-yfti-firstrow:yes''>
       <td width=586 colspan=2 valign=top style=''width:439.4pt;border:solid windowtext 1.0pt;
       padding:0in 5.4pt 0in 5.4pt''>
       <p class=MsoListParagraph align=center style=''margin:0in;text-align:center''><b><span
       lang=EN-IN style=''font-family:Verdana,sans-serif;color:black;background:
       white;mso-ansi-language:EN-IN''>Request details</span></b></p>
       </td>
       </tr>

       <tr style=''mso-yfti-irow:1''>
       <td width=298 valign=top style=''width:223.35pt;border:solid windowtext 1.0pt;
       border-top:none;padding:0in 5.4pt 0in 5.4pt''>
       <p class=MsoListParagraph style=''margin:0in;text-align:justify''><span
       lang=EN-IN style=''font-family:Verdana,sans-serif;color:black;background:
       white;mso-ansi-language:EN-IN''>Event request timestamp</span></p></td>

       <td width=288 valign=top style=''width:216.05pt;border-top:none;border-left:
       none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
       padding:0in 5.4pt 0in 5.4pt''>
       <p class=MsoListParagraph style=''margin:0in''><span lang=EN-IN
       style=''font-family:Verdana,sans-serif;color:black;background:white;
       mso-ansi-language:EN-IN''>$timestamp</span></p></td>
       </tr>

       <tr style=''mso-yfti-irow:1''>
       <td width=298 valign=top style=''width:223.35pt;border:solid windowtext 1.0pt;
       border-top:none;padding:0in 5.4pt 0in 5.4pt''>
       <p class=MsoListParagraph style=''margin:0in;text-align:justify''><span
       lang=EN-IN style=''font-family:Verdana,sans-serif;color:black;background:
       white;mso-ansi-language:EN-IN''>Event ID</span></p></td>

       <td width=288 valign=top style=''width:216.05pt;border-top:none;border-left:
       none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
       padding:0in 5.4pt 0in 5.4pt''>
       <p class=MsoListParagraph style=''margin:0in''><span lang=EN-IN
       style=''font-family:Verdana,sans-serif;color:black;background:white;
       mso-ansi-language:EN-IN''>$eventId</span></p></td>
       </tr>

       <tr style=''mso-yfti-irow:1''>
       <td width=298 valign=top style=''width:223.35pt;border:solid windowtext 1.0pt;
       border-top:none;padding:0in 5.4pt 0in 5.4pt''>
       <p class=MsoListParagraph style=''margin:0in;text-align:justify''><span
       lang=EN-IN style=''font-family:Verdana,sans-serif;color:black;background:
       white;mso-ansi-language:EN-IN''>Authentication mode</span></p></td>

       <td width=288 valign=top style=''width:216.05pt;border-top:none;border-left:
       none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
       padding:0in 5.4pt 0in 5.4pt''>
       <p class=MsoListParagraph style=''margin:0in''><span lang=EN-IN
       style=''font-family:Verdana,sans-serif;color:black;background:white;
       mso-ansi-language:EN-IN''>$authenticationMode</span></p></td>
       </tr>
       <tr style=''mso-yfti-irow:1''>
       <td width=298 valign=top style=''width:223.35pt;border:solid windowtext 1.0pt;
       border-top:none;padding:0in 5.4pt 0in 5.4pt''>
       <p class=MsoListParagraph style=''margin:0in;text-align:justify''><span
       lang=EN-IN style=''font-family:Verdana,sans-serif;color:black;background:
       white;mso-ansi-language:EN-IN''>Event type</span></p></td>

       <td width=288 valign=top style=''width:216.05pt;border-top:none;border-left:
       none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
       padding:0in 5.4pt 0in 5.4pt''>
       <p class=MsoListParagraph style=''margin:0in''><span lang=EN-IN
       style=''font-family:Verdana,sans-serif;color:black;background:white;
       mso-ansi-language:EN-IN''>$eventType</span></p></td>
       </tr>
       <tr style=''mso-yfti-irow:1''>
       <td width=298 valign=top style=''width:223.35pt;border:solid windowtext 1.0pt;
       border-top:none;padding:0in 5.4pt 0in 5.4pt''>
       <p class=MsoListParagraph style=''margin:0in;text-align:justify''><span
       lang=EN-IN style=''font-family:Verdana,sans-serif;color:black;background:
       white;mso-ansi-language:EN-IN''>Event status</span></p></td>

       <td width=288 valign=top style=''width:216.05pt;border-top:none;border-left:
       none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
       padding:0in 5.4pt 0in 5.4pt''>
       <p class=MsoListParagraph style=''margin:0in''><span lang=EN-IN
       style=''font-family:Verdana,sans-serif;color:black;background:white;
       mso-ansi-language:EN-IN''>$eventStatus</span></p></td>
       </tr>
       <tr style=''mso-yfti-irow:1''>
       <td width=298 valign=top style=''width:223.35pt;border:solid windowtext 1.0pt;
       border-top:none;padding:0in 5.4pt 0in 5.4pt''>
       <p class=MsoListParagraph style=''margin:0in;text-align:justify''><span
       lang=EN-IN style=''font-family:Verdana,sans-serif;color:black;background:
       white;mso-ansi-language:EN-IN''>Summary</span></p></td>

       <td width=288 valign=top style=''width:216.05pt;border-top:none;border-left:
       none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
       padding:0in 5.4pt 0in 5.4pt''>
       <p class=MsoListParagraph style=''margin:0in''><span lang=EN-IN
       style=''font-family:Verdana,sans-serif;color:black;background:white;
       mso-ansi-language:EN-IN''>$summary</span></p></td>
       </tr>
      </table>

      <p class=MsoListParagraph align=center style=''text-align:center''><span
      lang=EN-IN style=''font-family:Verdana,sans-serif;color:black;background:white;
      mso-ansi-language:EN-IN''>&nbsp;</span></p>

      <p class=MsoListParagraph align=center style=''text-align:center''><span
      lang=EN-IN style=''font-family:Verdana,sans-serif;color:black;background:white;
      mso-ansi-language:EN-IN''>To view the status of your event, return to&nbsp;</span><span
      lang=EN-IN style=''mso-ansi-language:EN-IN''><a
      href=><span
      style=''font-family:Verdana,sans-serif;color:#004B91;background:white''><a href=$trackServiceRequestLink>event summary</a></span></a></span><span lang=EN-IN style=''font-family:Verdana,sans-serif;
      color:black;background:white;mso-ansi-language:EN-IN''>.</span></p>

      <p class=MsoNormal style=''mso-margin-top-alt:auto;mso-margin-bottom-alt:auto''><span
      lang=EN-IN style=''mso-ansi-language:EN-IN''>&nbsp;</span></p>

      </div>

      </div>

      </body>

      </html>', module_id='10006', module_name='Resident Services', template_typ_code='acknowledgement-manage-my-vid', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1497' AND lang_code='eng';
     UPDATE master.template
     SET "name"='Acknowledgement for order a physical card', descr='Acknowledgement for order a physical card', file_format_code='html', model='velocity', file_txt='<html>

      <head>

      </head>

      <body lang=EN-US link=blue vlink=#954F72 style=''tab-interval:.5in;word-wrap:break-word''>

      <div class=WordSection1>

      <div>

      <p class=MsoNormal align=center style=''text-align:center''><span lang=EN-IN><img
      width=200 height=100 id=Picture 2
      src=$pdfHeaderLogo alt=MOSIP></span></p>
      <p class=MsoNormal align=center style=''text-align:center''><span lang=EN-IN><img
      width=50 height=50 id=partnerlogo
      src=$partnerLogo alt=partner logo></span></p>

      <table class=MsoNormalTable align=center border=0 cellspacing=0 cellpadding=0 width=586
       style=''width:439.4pt;border-collapse:collapse;mso-yfti-tbllook:
       1184;mso-padding-alt:0in 0in 0in 0in''>
       <tr style=''mso-yfti-irow:0;mso-yfti-firstrow:yes''>
       <td width=586 colspan=2 valign=top style=''width:439.4pt;border:solid windowtext 1.0pt;
       padding:0in 5.4pt 0in 5.4pt''>
       <p class=MsoListParagraph align=center style=''margin:0in;text-align:center''><b><span
       lang=EN-IN style=''font-family:Verdana,sans-serif;color:black;background:
       white;mso-ansi-language:EN-IN''>Request details</span></b></p>
       </td>
       </tr>

       <tr style=''mso-yfti-irow:1''>
       <td width=298 valign=top style=''width:223.35pt;border:solid windowtext 1.0pt;
       border-top:none;padding:0in 5.4pt 0in 5.4pt''>
       <p class=MsoListParagraph style=''margin:0in;text-align:justify''><span
       lang=EN-IN style=''font-family:Verdana,sans-serif;color:black;background:
       white;mso-ansi-language:EN-IN''>Event request timestamp</span></p></td>

       <td width=288 valign=top style=''width:216.05pt;border-top:none;border-left:
       none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
       padding:0in 5.4pt 0in 5.4pt''>
       <p class=MsoListParagraph style=''margin:0in''><span lang=EN-IN
       style=''font-family:Verdana,sans-serif;color:black;background:white;
       mso-ansi-language:EN-IN''>$timestamp</span></p></td>
       </tr>

       <tr style=''mso-yfti-irow:1''>
       <td width=298 valign=top style=''width:223.35pt;border:solid windowtext 1.0pt;
       border-top:none;padding:0in 5.4pt 0in 5.4pt''>
       <p class=MsoListParagraph style=''margin:0in;text-align:justify''><span
       lang=EN-IN style=''font-family:Verdana,sans-serif;color:black;background:
       white;mso-ansi-language:EN-IN''>Event ID</span></p></td>

       <td width=288 valign=top style=''width:216.05pt;border-top:none;border-left:
       none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
       padding:0in 5.4pt 0in 5.4pt''>
       <p class=MsoListParagraph style=''margin:0in''><span lang=EN-IN
       style=''font-family:Verdana,sans-serif;color:black;background:white;
       mso-ansi-language:EN-IN''>$eventId</span></p></td>
       </tr>

       <tr style=''mso-yfti-irow:1''>
       <td width=298 valign=top style=''width:223.35pt;border:solid windowtext 1.0pt;
       border-top:none;padding:0in 5.4pt 0in 5.4pt''>
       <p class=MsoListParagraph style=''margin:0in;text-align:justify''><span
       lang=EN-IN style=''font-family:Verdana,sans-serif;color:black;background:
       white;mso-ansi-language:EN-IN''>Authentication mode</span></p></td>

       <td width=288 valign=top style=''width:216.05pt;border-top:none;border-left:
       none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
       padding:0in 5.4pt 0in 5.4pt''>
       <p class=MsoListParagraph style=''margin:0in''><span lang=EN-IN
       style=''font-family:Verdana,sans-serif;color:black;background:white;
       mso-ansi-language:EN-IN''>$authenticationMode</span></p></td>
       </tr>
       <tr style=''mso-yfti-irow:1''>
       <td width=298 valign=top style=''width:223.35pt;border:solid windowtext 1.0pt;
       border-top:none;padding:0in 5.4pt 0in 5.4pt''>
       <p class=MsoListParagraph style=''margin:0in;text-align:justify''><span
       lang=EN-IN style=''font-family:Verdana,sans-serif;color:black;background:
       white;mso-ansi-language:EN-IN''>Event type</span></p></td>

       <td width=288 valign=top style=''width:216.05pt;border-top:none;border-left:
       none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
       padding:0in 5.4pt 0in 5.4pt''>
       <p class=MsoListParagraph style=''margin:0in''><span lang=EN-IN
       style=''font-family:Verdana,sans-serif;color:black;background:white;
       mso-ansi-language:EN-IN''>$eventType</span></p></td>
       </tr>
       <tr style=''mso-yfti-irow:1''>
       <td width=298 valign=top style=''width:223.35pt;border:solid windowtext 1.0pt;
       border-top:none;padding:0in 5.4pt 0in 5.4pt''>
       <p class=MsoListParagraph style=''margin:0in;text-align:justify''><span
       lang=EN-IN style=''font-family:Verdana,sans-serif;color:black;background:
       white;mso-ansi-language:EN-IN''>Event status</span></p></td>

       <td width=288 valign=top style=''width:216.05pt;border-top:none;border-left:
       none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
       padding:0in 5.4pt 0in 5.4pt''>
       <p class=MsoListParagraph style=''margin:0in''><span lang=EN-IN
       style=''font-family:Verdana,sans-serif;color:black;background:white;
       mso-ansi-language:EN-IN''>$eventStatus</span></p></td>
       </tr>
       <tr style=''mso-yfti-irow:1''>
       <td width=298 valign=top style=''width:223.35pt;border:solid windowtext 1.0pt;
       border-top:none;padding:0in 5.4pt 0in 5.4pt''>
       <p class=MsoListParagraph style=''margin:0in;text-align:justify''><span
       lang=EN-IN style=''font-family:Verdana,sans-serif;color:black;background:
       white;mso-ansi-language:EN-IN''>Summary</span></p></td>

       <td width=288 valign=top style=''width:216.05pt;border-top:none;border-left:
       none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
       padding:0in 5.4pt 0in 5.4pt''>
       <p class=MsoListParagraph style=''margin:0in''><span lang=EN-IN
       style=''font-family:Verdana,sans-serif;color:black;background:white;
       mso-ansi-language:EN-IN''>$summary</span></p></td>
       </tr>
      </table>

      <p class=MsoListParagraph align=center style=''text-align:center''><span
      lang=EN-IN style=''font-family:Verdana,sans-serif;color:black;background:white;
      mso-ansi-language:EN-IN''>&nbsp;</span></p>

      <p class=MsoListParagraph align=center style=''text-align:center''><span
      lang=EN-IN style=''font-family:Verdana,sans-serif;color:black;background:white;
      mso-ansi-language:EN-IN''>To view the status of your event, return to&nbsp;</span><span
      lang=EN-IN style=''mso-ansi-language:EN-IN''><a
      href=><span
      style=''font-family:Verdana,sans-serif;color:#004B91;background:white''><a href=$trackServiceRequestLink>event summary</a></span></a></span><span lang=EN-IN style=''font-family:Verdana,sans-serif;
      color:black;background:white;mso-ansi-language:EN-IN''>.</span></p>

      <p class=MsoNormal style=''mso-margin-top-alt:auto;mso-margin-bottom-alt:auto''><span
      lang=EN-IN style=''mso-ansi-language:EN-IN''>&nbsp;</span></p>

      </div>

      </div>

      </body>

      </html>', module_id='10006', module_name='Resident Services', template_typ_code='acknowledgement-order-a-physical-card', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1498' AND lang_code='eng';
     UPDATE master.template
     SET "name"='Acknowledgement for Download a personalized card', descr='Acknowledgement for Download a personalized card', file_format_code='html', model='velocity', file_txt='<html>

      <head>

      </head>

      <body lang=EN-US link=blue vlink=#954F72 style=''tab-interval:.5in;word-wrap:break-word''>

      <div class=WordSection1>

      <div>

      <p class=MsoNormal align=center style=''text-align:center''><span lang=EN-IN><img
      width=200 height=100 id=Picture 2
      src=$pdfHeaderLogo alt=MOSIP></span></p>

      <table class=MsoNormalTable border=0 cellspacing=0 cellpadding=0 width=586
       style=''width:439.4pt;margin-left:61.05pt;border-collapse:collapse;mso-yfti-tbllook:
       1184;mso-padding-alt:0in 0in 0in 0in''>
       <tr style=''mso-yfti-irow:0;mso-yfti-firstrow:yes''>
       <td width=586 colspan=2 valign=top style=''width:439.4pt;border:solid windowtext 1.0pt;
       padding:0in 5.4pt 0in 5.4pt''>
       <p class=MsoListParagraph align=center style=''margin:0in;text-align:center''><b><span
       lang=EN-IN style=''font-family:Verdana,sans-serif;color:black;background:
       white;mso-ansi-language:EN-IN''>Request details</span></b></p>
       </td>
       </tr>
       <tr style=''mso-yfti-irow:1''>
       <td width=298 valign=top style=''width:223.35pt;border:solid windowtext 1.0pt;
       border-top:none;padding:0in 5.4pt 0in 5.4pt''>
       <p class=MsoListParagraph style=''margin:0in;text-align:justify''><span
       lang=EN-IN style=''font-family:Verdana,sans-serif;color:black;background:
       white;mso-ansi-language:EN-IN''>Event request timestamp</span></p></td>

       <td width=288 valign=top style=''width:216.05pt;border-top:none;border-left:
       none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
       padding:0in 5.4pt 0in 5.4pt''>
       <p class=MsoListParagraph style=''margin:0in''><span lang=EN-IN
       style=''font-family:Verdana,sans-serif;color:black;background:white;
       mso-ansi-language:EN-IN''>$timestamp</span></p></td>
       </tr>

       <tr style=''mso-yfti-irow:1''>
       <td width=298 valign=top style=''width:223.35pt;border:solid windowtext 1.0pt;
       border-top:none;padding:0in 5.4pt 0in 5.4pt''>
       <p class=MsoListParagraph style=''margin:0in;text-align:justify''><span
       lang=EN-IN style=''font-family:Verdana,sans-serif;color:black;background:
       white;mso-ansi-language:EN-IN''>Event ID</span></p></td>

       <td width=288 valign=top style=''width:216.05pt;border-top:none;border-left:
       none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
       padding:0in 5.4pt 0in 5.4pt''>
       <p class=MsoListParagraph style=''margin:0in''><span lang=EN-IN
       style=''font-family:Verdana,sans-serif;color:black;background:white;
       mso-ansi-language:EN-IN''>$eventId</span></p></td>
       </tr>

       <tr style=''mso-yfti-irow:1''>
       <td width=298 valign=top style=''width:223.35pt;border:solid windowtext 1.0pt;
       border-top:none;padding:0in 5.4pt 0in 5.4pt''>
       <p class=MsoListParagraph style=''margin:0in;text-align:justify''><span
       lang=EN-IN style=''font-family:Verdana,sans-serif;color:black;background:
       white;mso-ansi-language:EN-IN''>Authentication mode</span></p></td>

       <td width=288 valign=top style=''width:216.05pt;border-top:none;border-left:
       none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
       padding:0in 5.4pt 0in 5.4pt''>
       <p class=MsoListParagraph style=''margin:0in''><span lang=EN-IN
       style=''font-family:Verdana,sans-serif;color:black;background:white;
       mso-ansi-language:EN-IN''>$authenticationMode</span></p></td>
       </tr>
       <tr style=''mso-yfti-irow:1''>
       <td width=298 valign=top style=''width:223.35pt;border:solid windowtext 1.0pt;
       border-top:none;padding:0in 5.4pt 0in 5.4pt''>
       <p class=MsoListParagraph style=''margin:0in;text-align:justify''><span
       lang=EN-IN style=''font-family:Verdana,sans-serif;color:black;background:
       white;mso-ansi-language:EN-IN''>Event type</span></p></td>

       <td width=288 valign=top style=''width:216.05pt;border-top:none;border-left:
       none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
       padding:0in 5.4pt 0in 5.4pt''>
       <p class=MsoListParagraph style=''margin:0in''><span lang=EN-IN
       style=''font-family:Verdana,sans-serif;color:black;background:white;
       mso-ansi-language:EN-IN''>$eventType</span></p></td>
       </tr>
       <tr style=''mso-yfti-irow:1''>
       <td width=298 valign=top style=''width:223.35pt;border:solid windowtext 1.0pt;
       border-top:none;padding:0in 5.4pt 0in 5.4pt''>
       <p class=MsoListParagraph style=''margin:0in;text-align:justify''><span
       lang=EN-IN style=''font-family:Verdana,sans-serif;color:black;background:
       white;mso-ansi-language:EN-IN''>Event status</span></p></td>

       <td width=288 valign=top style=''width:216.05pt;border-top:none;border-left:
       none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
       padding:0in 5.4pt 0in 5.4pt''>
       <p class=MsoListParagraph style=''margin:0in''><span lang=EN-IN
       style=''font-family:Verdana,sans-serif;color:black;background:white;
       mso-ansi-language:EN-IN''>$eventStatus</span></p></td>
       </tr>
       <tr style=''mso-yfti-irow:1''>
       <td width=298 valign=top style=''width:223.35pt;border:solid windowtext 1.0pt;
       border-top:none;padding:0in 5.4pt 0in 5.4pt''>
       <p class=MsoListParagraph style=''margin:0in;text-align:justify''><span
       lang=EN-IN style=''font-family:Verdana,sans-serif;color:black;background:
       white;mso-ansi-language:EN-IN''>Summary</span></p></td>

       <td width=288 valign=top style=''width:216.05pt;border-top:none;border-left:
       none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
       padding:0in 5.4pt 0in 5.4pt''>
       <p class=MsoListParagraph style=''margin:0in''><span lang=EN-IN
       style=''font-family:Verdana,sans-serif;color:black;background:white;
       mso-ansi-language:EN-IN''>$summary</span></p></td>
       </tr>
       <tr style=''mso-yfti-irow:2''>
       <td width=586 colspan=2 valign=top style=''width:439.4pt;border:solid windowtext 1.0pt;
       border-top:none;padding:0in 5.4pt 0in 5.4pt''>
       <p class=MsoListParagraph align=center style=''margin:0in;text-align:center''><b><span
       lang=EN-IN style=''font-family:Verdana,sans-serif;color:black;background:
       white;mso-ansi-language:EN-IN''>Card details</span></b></p>
       </td>
       </tr>

       <tr style=''mso-yfti-irow:3''>
       <td width=298 valign=top style=''width:223.35pt;border:solid windowtext 1.0pt;
       border-top:none;padding:0in 5.4pt 0in 5.4pt''>
       <p class=MsoListParagraph style=''margin:0in''><span lang=EN-IN
       style=''font-family:Verdana,sans-serif;color:black;background:white;
       mso-ansi-language:EN-IN''>Attributes added to the card</span></p>
       <p class=MsoListParagraph style=''margin:0in''><span lang=EN-IN
       style=''font-family:Verdana,sans-serif;color:black;background:white;
       mso-ansi-language:EN-IN''>&nbsp;</span></p>
       <p class=MsoListParagraph style=''margin:0in''><b><span lang=EN-IN
       style=''mso-ansi-language:EN-IN''>&nbsp;</span></b></p>
       </td>
       <td width=288 valign=top style=''width:216.05pt;border-top:none;border-left:
       none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
       padding:0in 5.4pt 0in 5.4pt''>
       <p class=MsoListParagraph style=''margin:0in''><span lang=EN-IN
       style=''font-family:Verdana,sans-serif;color:black;background:white;
       mso-ansi-language:EN-IN''>$attributeList</span></span></p>
       <p class=MsoListParagraph style=''margin:0in''><b><span lang=EN-IN
       style=''mso-ansi-language:EN-IN''>&nbsp;</span></b></p>
       </td>
       </tr>


      </table>

      <p class=MsoListParagraph align=center style=''text-align:center''><span
      lang=EN-IN style=''font-family:Verdana,sans-serif;color:black;background:white;
      mso-ansi-language:EN-IN''>&nbsp;</span></p>

      <p class=MsoListParagraph align=center style=''text-align:center''><span
      lang=EN-IN style=''font-family:Verdana,sans-serif;color:black;background:white;
      mso-ansi-language:EN-IN''>To view the status of your event, return to&nbsp;</span><span
      lang=EN-IN style=''mso-ansi-language:EN-IN''><a
      href=><span
      style=''font-family:Verdana,sans-serif;color:#004B91;background:white''><a href=$trackServiceRequestLink>event summary</a></span></a></span><span lang=EN-IN style=''font-family:Verdana,sans-serif;
      color:black;background:white;mso-ansi-language:EN-IN''>.</span></p>

      <p class=MsoNormal style=''mso-margin-top-alt:auto;mso-margin-bottom-alt:auto''><span
      lang=EN-IN style=''mso-ansi-language:EN-IN''>&nbsp;</span></p>

      </div>

      </div>

      </body>

      </html>', module_id='10006', module_name='Resident Services', template_typ_code='acknowledgement-download-a-personalized-card', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1499' AND lang_code='eng';
     UPDATE master.template
     SET "name"='Acknowledgement for Update demographic data', descr='Acknowledgement for Update demographic data', file_format_code='html', model='velocity', file_txt='<html>

      <head>

      </head>

      <body lang=EN-US link=blue vlink=#954F72 style=''tab-interval:.5in;word-wrap:break-word''>

      <div class=WordSection1>

      <div>

      <p class=MsoNormal align=center style=''text-align:center''><span lang=EN-IN><img
      width=200 height=100 id=Picture 2
      src=$pdfHeaderLogo alt=MOSIP></span></p>

      <table class=MsoNormalTable border=0 cellspacing=0 cellpadding=0 width=586
       style=''width:439.4pt;margin-left:61.05pt;border-collapse:collapse;mso-yfti-tbllook:
       1184;mso-padding-alt:0in 0in 0in 0in''>
       <tr style=''mso-yfti-irow:0;mso-yfti-firstrow:yes''>
       <td width=586 colspan=2 valign=top style=''width:439.4pt;border:solid windowtext 1.0pt;
       padding:0in 5.4pt 0in 5.4pt''>
       <p class=MsoListParagraph align=center style=''margin:0in;text-align:center''><b><span
       lang=EN-IN style=''font-family:Verdana,sans-serif;color:black;background:
       white;mso-ansi-language:EN-IN''>Request details</span></b></p>
       </td>
       </tr>
       <tr style=''mso-yfti-irow:1''>
       <td width=298 valign=top style=''width:223.35pt;border:solid windowtext 1.0pt;
       border-top:none;padding:0in 5.4pt 0in 5.4pt''>
       <p class=MsoListParagraph style=''margin:0in;text-align:justify''><span
       lang=EN-IN style=''font-family:Verdana,sans-serif;color:black;background:
       white;mso-ansi-language:EN-IN''>Event request timestamp</span></p></td>

       <td width=288 valign=top style=''width:216.05pt;border-top:none;border-left:
       none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
       padding:0in 5.4pt 0in 5.4pt''>
       <p class=MsoListParagraph style=''margin:0in''><span lang=EN-IN
       style=''font-family:Verdana,sans-serif;color:black;background:white;
       mso-ansi-language:EN-IN''>$timestamp</span></p></td>
       </tr>

       <tr style=''mso-yfti-irow:1''>
       <td width=298 valign=top style=''width:223.35pt;border:solid windowtext 1.0pt;
       border-top:none;padding:0in 5.4pt 0in 5.4pt''>
       <p class=MsoListParagraph style=''margin:0in;text-align:justify''><span
       lang=EN-IN style=''font-family:Verdana,sans-serif;color:black;background:
       white;mso-ansi-language:EN-IN''>Event ID</span></p></td>

       <td width=288 valign=top style=''width:216.05pt;border-top:none;border-left:
       none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
       padding:0in 5.4pt 0in 5.4pt''>
       <p class=MsoListParagraph style=''margin:0in''><span lang=EN-IN
       style=''font-family:Verdana,sans-serif;color:black;background:white;
       mso-ansi-language:EN-IN''>$eventId</span></p></td>
       </tr>

       <tr style=''mso-yfti-irow:1''>
       <td width=298 valign=top style=''width:223.35pt;border:solid windowtext 1.0pt;
       border-top:none;padding:0in 5.4pt 0in 5.4pt''>
       <p class=MsoListParagraph style=''margin:0in;text-align:justify''><span
       lang=EN-IN style=''font-family:Verdana,sans-serif;color:black;background:
       white;mso-ansi-language:EN-IN''>Authentication mode</span></p></td>

       <td width=288 valign=top style=''width:216.05pt;border-top:none;border-left:
       none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
       padding:0in 5.4pt 0in 5.4pt''>
       <p class=MsoListParagraph style=''margin:0in''><span lang=EN-IN
       style=''font-family:Verdana,sans-serif;color:black;background:white;
       mso-ansi-language:EN-IN''>$authenticationMode</span></p></td>
       </tr>
       <tr style=''mso-yfti-irow:1''>
       <td width=298 valign=top style=''width:223.35pt;border:solid windowtext 1.0pt;
       border-top:none;padding:0in 5.4pt 0in 5.4pt''>
       <p class=MsoListParagraph style=''margin:0in;text-align:justify''><span
       lang=EN-IN style=''font-family:Verdana,sans-serif;color:black;background:
       white;mso-ansi-language:EN-IN''>Event type</span></p></td>

       <td width=288 valign=top style=''width:216.05pt;border-top:none;border-left:
       none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
       padding:0in 5.4pt 0in 5.4pt''>
       <p class=MsoListParagraph style=''margin:0in''><span lang=EN-IN
       style=''font-family:Verdana,sans-serif;color:black;background:white;
       mso-ansi-language:EN-IN''>$eventType</span></p></td>
       </tr>
       <tr style=''mso-yfti-irow:1''>
       <td width=298 valign=top style=''width:223.35pt;border:solid windowtext 1.0pt;
       border-top:none;padding:0in 5.4pt 0in 5.4pt''>
       <p class=MsoListParagraph style=''margin:0in;text-align:justify''><span
       lang=EN-IN style=''font-family:Verdana,sans-serif;color:black;background:
       white;mso-ansi-language:EN-IN''>Event status</span></p></td>

       <td width=288 valign=top style=''width:216.05pt;border-top:none;border-left:
       none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
       padding:0in 5.4pt 0in 5.4pt''>
       <p class=MsoListParagraph style=''margin:0in''><span lang=EN-IN
       style=''font-family:Verdana,sans-serif;color:black;background:white;
       mso-ansi-language:EN-IN''>$eventStatus</span></p></td>
       </tr>
       <tr style=''mso-yfti-irow:1''>
       <td width=298 valign=top style=''width:223.35pt;border:solid windowtext 1.0pt;
       border-top:none;padding:0in 5.4pt 0in 5.4pt''>
       <p class=MsoListParagraph style=''margin:0in;text-align:justify''><span
       lang=EN-IN style=''font-family:Verdana,sans-serif;color:black;background:
       white;mso-ansi-language:EN-IN''>Summary</span></p></td>

       <td width=288 valign=top style=''width:216.05pt;border-top:none;border-left:
       none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
       padding:0in 5.4pt 0in 5.4pt''>
       <p class=MsoListParagraph style=''margin:0in''><span lang=EN-IN
       style=''font-family:Verdana,sans-serif;color:black;background:white;
       mso-ansi-language:EN-IN''>$summary</span></p></td>
       </tr>
       <tr style=''mso-yfti-irow:2''>
       <td width=586 colspan=2 valign=top style=''width:439.4pt;border:solid windowtext 1.0pt;
       border-top:none;padding:0in 5.4pt 0in 5.4pt''>
       <p class=MsoListParagraph align=center style=''margin:0in;text-align:center''><b><span
       lang=EN-IN style=''font-family:Verdana,sans-serif;color:black;background:
       white;mso-ansi-language:EN-IN''>Update details</span></b></p>
       </td>
       </tr>

       <tr style=''mso-yfti-irow:3''>
       <td width=298 valign=top style=''width:223.35pt;border:solid windowtext 1.0pt;
       border-top:none;padding:0in 5.4pt 0in 5.4pt''>
       <p class=MsoListParagraph style=''margin:0in''><span lang=EN-IN
       style=''font-family:Verdana,sans-serif;color:black;background:white;
       mso-ansi-language:EN-IN''>Attributes added to the card</span></p>
       <p class=MsoListParagraph style=''margin:0in''><span lang=EN-IN
       style=''font-family:Verdana,sans-serif;color:black;background:white;
       mso-ansi-language:EN-IN''>&nbsp;</span></p>
       <p class=MsoListParagraph style=''margin:0in''><b><span lang=EN-IN
       style=''mso-ansi-language:EN-IN''>&nbsp;</span></b></p>
       </td>
       <td width=288 valign=top style=''width:216.05pt;border-top:none;border-left:
       none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
       padding:0in 5.4pt 0in 5.4pt''>
       <p class=MsoListParagraph style=''margin:0in''><span lang=EN-IN
       style=''font-family:Verdana,sans-serif;color:black;background:white;
       mso-ansi-language:EN-IN''>$attributeList</span></span></p>
       <p class=MsoListParagraph style=''margin:0in''><b><span lang=EN-IN
       style=''mso-ansi-language:EN-IN''>&nbsp;</span></b></p>
       </td>
       </tr>


      </table>

      <p class=MsoListParagraph align=center style=''text-align:center''><span
      lang=EN-IN style=''font-family:Verdana,sans-serif;color:black;background:white;
      mso-ansi-language:EN-IN''>&nbsp;</span></p>

      <p class=MsoListParagraph align=center style=''text-align:center''><span
      lang=EN-IN style=''font-family:Verdana,sans-serif;color:black;background:white;
      mso-ansi-language:EN-IN''>To view the status of your event, return to&nbsp;</span><span
      lang=EN-IN style=''mso-ansi-language:EN-IN''><a
      href=><span
      style=''font-family:Verdana,sans-serif;color:#004B91;background:white''><a href=$trackServiceRequestLink>event summary</a></span></a></span><span lang=EN-IN style=''font-family:Verdana,sans-serif;
      color:black;background:white;mso-ansi-language:EN-IN''>.</span></p>

      <p class=MsoNormal style=''mso-margin-top-alt:auto;mso-margin-bottom-alt:auto''><span
      lang=EN-IN style=''mso-ansi-language:EN-IN''>&nbsp;</span></p>

      </div>

      </div>

      </body>

      </html>', module_id='10006', module_name='Resident Services', template_typ_code='acknowledgement-update-demographic-data', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1500' AND lang_code='eng';
     UPDATE master.template
     SET "name"='Acknowledgement for verify email id or phone number', descr='Acknowledgement for verify email id or phone number', file_format_code='html', model='velocity', file_txt='<html>

      <head>

      </head>

      <body lang=EN-US link=blue vlink=#954F72 style=''tab-interval:.5in;word-wrap:break-word''>

      <div class=WordSection1>

      <div>

      <p class=MsoNormal align=center style=''text-align:center''><span lang=EN-IN><img
      width=200 height=100 id=Picture 2
      src=$pdfHeaderLogo alt=MOSIP></span></p>

      <table class=MsoNormalTable border=0 cellspacing=0 cellpadding=0 width=586
       style=''width:439.4pt;margin-left:61.05pt;border-collapse:collapse;mso-yfti-tbllook:
       1184;mso-padding-alt:0in 0in 0in 0in''>
       <tr style=''mso-yfti-irow:0;mso-yfti-firstrow:yes''>
       <td width=586 colspan=2 valign=top style=''width:439.4pt;border:solid windowtext 1.0pt;
       padding:0in 5.4pt 0in 5.4pt''>
       <p class=MsoListParagraph align=center style=''margin:0in;text-align:center''><b><span
       lang=EN-IN style=''font-family:Verdana,sans-serif;color:black;background:
       white;mso-ansi-language:EN-IN''>Request details</span></b></p>
       </td>
       </tr>
       <tr style=''mso-yfti-irow:1''>
       <td width=298 valign=top style=''width:223.35pt;border:solid windowtext 1.0pt;
       border-top:none;padding:0in 5.4pt 0in 5.4pt''>
       <p class=MsoListParagraph style=''margin:0in;text-align:justify''><span
       lang=EN-IN style=''font-family:Verdana,sans-serif;color:black;background:
       white;mso-ansi-language:EN-IN''>Event request timestamp</span></p></td>

       <td width=288 valign=top style=''width:216.05pt;border-top:none;border-left:
       none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
       padding:0in 5.4pt 0in 5.4pt''>
       <p class=MsoListParagraph style=''margin:0in''><span lang=EN-IN
       style=''font-family:Verdana,sans-serif;color:black;background:white;
       mso-ansi-language:EN-IN''>$timestamp</span></p></td>
       </tr>

       <tr style=''mso-yfti-irow:1''>
       <td width=298 valign=top style=''width:223.35pt;border:solid windowtext 1.0pt;
       border-top:none;padding:0in 5.4pt 0in 5.4pt''>
       <p class=MsoListParagraph style=''margin:0in;text-align:justify''><span
       lang=EN-IN style=''font-family:Verdana,sans-serif;color:black;background:
       white;mso-ansi-language:EN-IN''>Event ID</span></p></td>

       <td width=288 valign=top style=''width:216.05pt;border-top:none;border-left:
       none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
       padding:0in 5.4pt 0in 5.4pt''>
       <p class=MsoListParagraph style=''margin:0in''><span lang=EN-IN
       style=''font-family:Verdana,sans-serif;color:black;background:white;
       mso-ansi-language:EN-IN''>$eventId</span></p></td>
       </tr>

       <tr style=''mso-yfti-irow:1''>
       <td width=298 valign=top style=''width:223.35pt;border:solid windowtext 1.0pt;
       border-top:none;padding:0in 5.4pt 0in 5.4pt''>
       <p class=MsoListParagraph style=''margin:0in;text-align:justify''><span
       lang=EN-IN style=''font-family:Verdana,sans-serif;color:black;background:
       white;mso-ansi-language:EN-IN''>Authentication mode</span></p></td>

       <td width=288 valign=top style=''width:216.05pt;border-top:none;border-left:
       none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
       padding:0in 5.4pt 0in 5.4pt''>
       <p class=MsoListParagraph style=''margin:0in''><span lang=EN-IN
       style=''font-family:Verdana,sans-serif;color:black;background:white;
       mso-ansi-language:EN-IN''>$authenticationMode</span></p></td>
       </tr>
       <tr style=''mso-yfti-irow:1''>
       <td width=298 valign=top style=''width:223.35pt;border:solid windowtext 1.0pt;
       border-top:none;padding:0in 5.4pt 0in 5.4pt''>
       <p class=MsoListParagraph style=''margin:0in;text-align:justify''><span
       lang=EN-IN style=''font-family:Verdana,sans-serif;color:black;background:
       white;mso-ansi-language:EN-IN''>Event type</span></p></td>

       <td width=288 valign=top style=''width:216.05pt;border-top:none;border-left:
       none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
       padding:0in 5.4pt 0in 5.4pt''>
       <p class=MsoListParagraph style=''margin:0in''><span lang=EN-IN
       style=''font-family:Verdana,sans-serif;color:black;background:white;
       mso-ansi-language:EN-IN''>$eventType</span></p></td>
       </tr>
       <tr style=''mso-yfti-irow:1''>
       <td width=298 valign=top style=''width:223.35pt;border:solid windowtext 1.0pt;
       border-top:none;padding:0in 5.4pt 0in 5.4pt''>
       <p class=MsoListParagraph style=''margin:0in;text-align:justify''><span
       lang=EN-IN style=''font-family:Verdana,sans-serif;color:black;background:
       white;mso-ansi-language:EN-IN''>Event status</span></p></td>

       <td width=288 valign=top style=''width:216.05pt;border-top:none;border-left:
       none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
       padding:0in 5.4pt 0in 5.4pt''>
       <p class=MsoListParagraph style=''margin:0in''><span lang=EN-IN
       style=''font-family:Verdana,sans-serif;color:black;background:white;
       mso-ansi-language:EN-IN''>$eventStatus</span></p></td>
       </tr>
       <tr style=''mso-yfti-irow:1''>
       <td width=298 valign=top style=''width:223.35pt;border:solid windowtext 1.0pt;
       border-top:none;padding:0in 5.4pt 0in 5.4pt''>
       <p class=MsoListParagraph style=''margin:0in;text-align:justify''><span
       lang=EN-IN style=''font-family:Verdana,sans-serif;color:black;background:
       white;mso-ansi-language:EN-IN''>Summary</span></p></td>

       <td width=288 valign=top style=''width:216.05pt;border-top:none;border-left:
       none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
       padding:0in 5.4pt 0in 5.4pt''>
       <p class=MsoListParagraph style=''margin:0in''><span lang=EN-IN
       style=''font-family:Verdana,sans-serif;color:black;background:white;
       mso-ansi-language:EN-IN''>$summary</span></p></td>
       </tr>
       <tr style=''mso-yfti-irow:2''>
       <td width=586 colspan=2 valign=top style=''width:439.4pt;border:solid windowtext 1.0pt;
       border-top:none;padding:0in 5.4pt 0in 5.4pt''>
       <p class=MsoListParagraph align=center style=''margin:0in;text-align:center''><b><span
       lang=EN-IN style=''font-family:Verdana,sans-serif;color:black;background:
       white;mso-ansi-language:EN-IN''>Verification details</span></b></p>
       </td>
       </tr>

       <tr style=''mso-yfti-irow:3''>
       <td width=298 valign=top style=''width:223.35pt;border:solid windowtext 1.0pt;
       border-top:none;padding:0in 5.4pt 0in 5.4pt''>
       <p class=MsoListParagraph style=''margin:0in''><span lang=EN-IN
       style=''font-family:Verdana,sans-serif;color:black;background:white;
       mso-ansi-language:EN-IN''>Channel that was verified</span></p>
       <p class=MsoListParagraph style=''margin:0in''><span lang=EN-IN
       style=''font-family:Verdana,sans-serif;color:black;background:white;
       mso-ansi-language:EN-IN''>&nbsp;</span></p>
       <p class=MsoListParagraph style=''margin:0in''><b><span lang=EN-IN
       style=''mso-ansi-language:EN-IN''>&nbsp;</span></b></p>
       </td>
       <td width=288 valign=top style=''width:216.05pt;border-top:none;border-left:
       none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
       padding:0in 5.4pt 0in 5.4pt''>
       <p class=MsoListParagraph style=''margin:0in''><span lang=EN-IN
       style=''font-family:Verdana,sans-serif;color:black;background:white;
       mso-ansi-language:EN-IN''>$channel</span></span></p>
       <p class=MsoListParagraph style=''margin:0in''><b><span lang=EN-IN
       style=''mso-ansi-language:EN-IN''>&nbsp;</span></b></p>
       </td>
       </tr>


      </table>
      <p class=MsoListParagraph align=center style=''text-align:center''><span
      lang=EN-IN style=''font-family:Verdana,sans-serif;color:black;background:white;
      mso-ansi-language:EN-IN''>&nbsp;</span></p>

      <p class=MsoListParagraph align=center style=''text-align:center''><span
      lang=EN-IN style=''font-family:Verdana,sans-serif;color:black;background:white;
      mso-ansi-language:EN-IN''>To view the status of your event, return to&nbsp;</span><span
      lang=EN-IN style=''mso-ansi-language:EN-IN''><a
      href=><span
      style=''font-family:Verdana,sans-serif;color:#004B91;background:white''><a href=$trackServiceRequestLink>event summary</a></span></a></span><span lang=EN-IN style=''font-family:Verdana,sans-serif;
      color:black;background:white;mso-ansi-language:EN-IN''>.</span></p>

      <p class=MsoNormal style=''mso-margin-top-alt:auto;mso-margin-bottom-alt:auto''><span
      lang=EN-IN style=''mso-ansi-language:EN-IN''>&nbsp;</span></p>

      </div>

      </div>

      </body>

      </html>', module_id='10006', module_name='Resident Services', template_typ_code='acknowledgement-verify-email-id-or-phone-number', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1501' AND lang_code='eng';
     UPDATE master.template
     SET "name"='Acknowledgement for Secure my Id', descr='Acknowledgement for Secure my Id', file_format_code='html', model='velocity', file_txt='<html>

      <head>

      </head>

      <body lang=EN-US link=blue vlink=#954F72 style=''tab-interval:.5in;word-wrap:break-word''>

       <div class=WordSection1>

       <div>

       <p class=MsoNormal align=center style=''text-align:center''><span lang=EN-IN><img width=200 height=100
       id=Picture 2 src=$pdfHeaderLogo alt=MOSIP></span></p>

       <table class=MsoNormalTable border=0 cellspacing=0 cellpadding=0 width=586 style=''width:439.4pt;margin-left:51.05pt;border-collapse:collapse;mso-yfti-tbllook:
       1184;mso-padding-alt:0in 0in 0in 0in''>
       <tr style=''mso-yfti-irow:0;mso-yfti-firstrow:yes''>
       <td width=586 colspan=2 valign=top style=''width:439.4pt;border:solid windowtext 1.0pt;
       padding:0in 5.4pt 0in 5.4pt''>
       <p class=MsoListParagraph align=center style=''margin:0in;text-align:center''><b><span lang=EN-IN
       style=''font-family:Verdana,sans-serif;color:black;background:
       white;mso-ansi-language:EN-IN''>Request details</span></b></p>
       </td>
       </tr>
       <tr style=''mso-yfti-irow:1''>
       <td width=298 valign=top style=''width:223.35pt;border:solid windowtext 1.0pt;
       border-top:none;padding:0in 5.4pt 0in 5.4pt''>
       <p class=MsoListParagraph style=''margin:0in;text-align:justify''><span lang=EN-IN style=''font-family:Verdana,sans-serif;color:black;background:
       white;mso-ansi-language:EN-IN''>Event request timestamp</span></p>
       </td>

       <td width=288 valign=top style=''width:216.05pt;border-top:none;border-left:
       none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
       padding:0in 5.4pt 0in 5.4pt''>
       <p class=MsoListParagraph style=''margin:0in''><span lang=EN-IN style=''font-family:Verdana,sans-serif;color:black;background:white;
       mso-ansi-language:EN-IN''>$timestamp</span></p>
       </td>
       </tr>

       <tr style=''mso-yfti-irow:1''>
       <td width=298 valign=top style=''width:223.35pt;border:solid windowtext 1.0pt;
       border-top:none;padding:0in 5.4pt 0in 5.4pt''>
       <p class=MsoListParagraph style=''margin:0in;text-align:justify''><span lang=EN-IN style=''font-family:Verdana,sans-serif;color:black;background:
       white;mso-ansi-language:EN-IN''>Event ID</span></p>
       </td>

       <td width=288 valign=top style=''width:216.05pt;border-top:none;border-left:
       none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
       padding:0in 5.4pt 0in 5.4pt''>
       <p class=MsoListParagraph style=''margin:0in''><span lang=EN-IN style=''font-family:Verdana,sans-serif;color:black;background:white;
       mso-ansi-language:EN-IN''>$eventId</span></p>
       </td>
       </tr>

       <tr style=''mso-yfti-irow:1''>
       <td width=298 valign=top style=''width:223.35pt;border:solid windowtext 1.0pt;
       border-top:none;padding:0in 5.4pt 0in 5.4pt''>
       <p class=MsoListParagraph style=''margin:0in;text-align:justify''><span lang=EN-IN style=''font-family:Verdana,sans-serif;color:black;background:
       white;mso-ansi-language:EN-IN''>Authentication mode</span></p>
       </td>

       <td width=288 valign=top style=''width:216.05pt;border-top:none;border-left:
       none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
       padding:0in 5.4pt 0in 5.4pt''>
       <p class=MsoListParagraph style=''margin:0in''><span lang=EN-IN style=''font-family:Verdana,sans-serif;color:black;background:white;
       mso-ansi-language:EN-IN''>$authenticationMode</span></p>
       </td>
       </tr>
       <tr style=''mso-yfti-irow:1''>
       <td width=298 valign=top style=''width:223.35pt;border:solid windowtext 1.0pt;
       border-top:none;padding:0in 5.4pt 0in 5.4pt''>
       <p class=MsoListParagraph style=''margin:0in;text-align:justify''><span lang=EN-IN style=''font-family:Verdana,sans-serif;color:black;background:
       white;mso-ansi-language:EN-IN''>Event type</span></p>
       </td>

       <td width=288 valign=top style=''width:216.05pt;border-top:none;border-left:
       none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
       padding:0in 5.4pt 0in 5.4pt''>
       <p class=MsoListParagraph style=''margin:0in''><span lang=EN-IN style=''font-family:Verdana,sans-serif;color:black;background:white;
       mso-ansi-language:EN-IN''>$eventType</span></p>
       </td>
       </tr>
       <tr style=''mso-yfti-irow:1''>
       <td width=298 valign=top style=''width:223.35pt;border:solid windowtext 1.0pt;
       border-top:none;padding:0in 5.4pt 0in 5.4pt''>
       <p class=MsoListParagraph style=''margin:0in;text-align:justify''><span lang=EN-IN style=''font-family:Verdana,sans-serif;color:black;background:
       white;mso-ansi-language:EN-IN''>Event status</span></p>
       </td>

       <td width=288 valign=top style=''width:216.05pt;border-top:none;border-left:
       none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
       padding:0in 5.4pt 0in 5.4pt''>
       <p class=MsoListParagraph style=''margin:0in''><span lang=EN-IN style=''font-family:Verdana,sans-serif;color:black;background:white;
       mso-ansi-language:EN-IN''>$eventStatus</span></p>
       </td>
       </tr>
       <tr style=''mso-yfti-irow:1''>
       <td width=298 valign=top style=''width:223.35pt;border:solid windowtext 1.0pt;
       border-top:none;padding:0in 5.4pt 0in 5.4pt''>
       <p class=MsoListParagraph style=''margin:0in;text-align:justify''><span lang=EN-IN style=''font-family:Verdana,sans-serif;color:black;background:
       white;mso-ansi-language:EN-IN''>Summary</span></p>
       </td>

       <td width=288 valign=top style=''width:216.05pt;border-top:none;border-left:
       none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
       padding:0in 5.4pt 0in 5.4pt''>
       <p class=MsoListParagraph style=''margin:0in''><span lang=EN-IN style=''font-family:Verdana,sans-serif;color:black;background:white;
       mso-ansi-language:EN-IN''>$summary</span></p>
       </td>
       </tr>


       </table>

       <p class=MsoListParagraph align=center style=''text-align:center''><span lang=EN-IN style=''font-family:Verdana,sans-serif;color:black;background:white;
      mso-ansi-language:EN-IN''>&nbsp;</span></p>

       <p class=MsoListParagraph align=center style=''text-align:center''><span lang=EN-IN style=''font-family:Verdana,sans-serif;color:black;background:white;
      mso-ansi-language:EN-IN''>To view the status of your event, return to&nbsp;</span><span lang=EN-IN
       style=''mso-ansi-language:EN-IN''><a href=><span
       style=''font-family:Verdana,sans-serif;color:#004B91;background:white''><a
       href=$trackServiceRequestLink>event summary</a></span></a></span><span lang=EN-IN style=''font-family:Verdana,sans-serif;
      color:black;background:white;mso-ansi-language:EN-IN''>.</span></p>


       <p class=MsoNormal style=''mso-margin-top-alt:auto;mso-margin-bottom-alt:auto''><span lang=EN-IN
       style=''mso-ansi-language:EN-IN''>&nbsp;</span></p>

       </div>

       </div>

      </body>

      </html>', module_id='10006', module_name='Resident Services', template_typ_code='acknowledgement-secure-my-id', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1502' AND lang_code='eng';
     UPDATE master.template
     SET "name"='List of registration centers', descr='List of registration centers', file_format_code='html', model='velocity', file_txt='<html>

      <head>
      <meta charset=UTF-8>
      <meta name=viewport content=width=device-width, initial-scale=1.0>
      <meta http-equiv=X-UA-Compatible content=ie=edge>
      <title>registration centers</title>
      </head>

      <body lang=EN-US style=''word-wrap: break-word''>

      <p class=MsoNormal align=center style=''text-align:center''><span lang=EN-IN><img width=200 height=100 id=Picture 2
      src=$pdfHeaderLogo alt=MOSIP></span></p>

      <p class=MsoNormal align=center style=''text-align: center''>
      <b><span
      style=''font-size: 16.0pt; line-height: 106%; font-family: Arial, sans-serif; color:#1D1C1D; background: yellow''>Registration
      centers</span></b>
      </p>

      <p class=MsoNormal align=center style=''text-align: center''>&nbsp;</p>

      <table class=MsoTableGrid border=1 cellspacing=0 cellpadding=0 width=737
      style=''width:90%;margin:auto;border-collapse: collapse;''>
      <tr>
      <td width=104 valign=top
      style=''width: 78.0pt; border: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt''>
      <p class=MsoNormal align=center style=''margin-bottom: 0in; text-align: center; line-height: normal''>
      <b>Serial number</b>
      </p>
      </td>
      <td width=104 valign=top
      style=''width: 78.0pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt''>
      <p class=MsoNormal align=center style=''margin-bottom: 0in; text-align: center; line-height: normal''>
      <b>Registration center name</b>
      </p>
      </td>
      <td width=104 valign=top
      style=''width: 78.0pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt''>
      <p class=MsoNormal align=center style=''margin-bottom: 0in; text-align: center; line-height: normal''>
      <b>Registration center address</b>
      </p>
      </td>
      <td width=104 valign=top
      style=''width: 78.0pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt''>
      <p class=MsoNormal align=center style=''margin-bottom: 0in; text-align: center; line-height: normal''>
      <b>Contact number</b>
      </p>
      </td>
      <td width=104 valign=top
      style=''width: 78.0pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt''>
      <p class=MsoNormal align=center style=''margin-bottom: 0in; text-align: center; line-height: normal''>
      <b>Days of week | Timings</b>
      </p>
      </td>
      </tr>
      #foreach($dto in $regCenterIntialList)
      <tr>
      <td width=104 valign=top
      style=''width: 78.0pt; border: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt''>
      <p class=MsoNormal align=center style=''margin-bottom: 0in; text-align: center; line-height: normal''>
      <span>$dto.serialNumber</span>
      </p>
      </td>
      <td width=104 valign=top
      style=''width: 78.0pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt''>
      <p class=MsoNormal align=center style=''margin-bottom: 0in; text-align: center; line-height: normal''>
      <span>$dto.name</span>
      </p>
      </td>
      <td width=104 valign=top
      style=''width: 78.0pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt''>
      <p class=MsoNormal align=center style=''margin-bottom: 0in; text-align: center; line-height: normal''>
      <span>$dto.fullAddress</span>
      </p>
      </td>
      <td width=104 valign=top
      style=''width: 78.0pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt''>
      <p class=MsoNormal align=center style=''margin-bottom: 0in; text-align: center; line-height: normal''>
      <span>$dto.contactPhone</span>
      </p>
      </td>
      <td width=104 valign=top
      style=''width: 78.0pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt''>
      <p class=MsoNormal align=center style=''margin-bottom: 0in; text-align: center; line-height: normal''>
      <span>$dto.workingHours</span>
      </p>
      </td>
      </tr>
      #end
      </table>
      <br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
      </body>

      </html>', module_id='10006', module_name='Resident Services', template_typ_code='registration-centers-list', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1503' AND lang_code='eng';
     UPDATE master.template
     SET "name"='Acknwoldegement service history type', descr='Acknwoldegement service history type', file_format_code='html', model='velocity', file_txt='<!DOCTYPE html>
      <html>
       <style>
       table,
       tr,
       td {
       border: 2px solid black;
       word-break: break-word;
       font-family: Verdana, sans-serif;
       }
       p {
       word-break: break-word;
       font-family: Verdana, sans-serif;
       }
       </style>
       <title>home page</title>
       <body>
       <p align=center style=''text-align:center''><span lang=EN-IN><img width=220 height=110 id=Picture 2
       src=$pdfHeaderLogo alt=MOSIP></span></p>
       <table border=1 cellspacing=0 cellpadding=0 style=''width:90%;margin:auto;border-collapse: collapse; ''>
       <tr>
       <td colspan=2 valign=top
       style=''width:100%;border: solid windowtext 1.0pt; padding: 5.4pt''>
       <p class=MsoListParagraph align=center style=''margin: 0in; text-align: center; line-height: normal''>
       <b><span lang=EN-IN
       style=''font-family: Verdana, sans-serif; color: black; background: white;font-size: 18.0pt;''>Request
       details</span></b>
       </p>
       </td>
       </tr>
       <tr>
       <td valign=top
       style=''width:20%;border: solid windowtext 1.0pt; border-top: none; padding: 0in 5.4pt 0in 5.4pt''>
       <p class=MsoNormal align=center style=''margin-bottom: 0in; text-align: left; line-height: normal''>
       <span lang=EN-IN style=''font-size: 14.0pt''>Event request timestamp</span>
       </p>
       </td>
       <td valign=top
       style=''width:80%;border: solid windowtext 1.0pt; border-top: none; padding: 0in 5.4pt 0in 5.4pt''>
       <p class=MsoNormal align=center style=''margin-bottom: 0in; text-align: left; line-height: normal''>
       <span lang=EN-IN style=''font-size: 14.0pt''>$eventReqTimeStamp</span>
       </p>
       </td>
       </tr>
       <tr>
       <td valign=top
       style=''width:20%;border: solid windowtext 1.0pt; border-top: none; padding: 0in 5.4pt 0in 5.4pt''>
       <p class=MsoNormal align=center style=''margin-bottom: 0in; text-align: left; line-height: normal''>
       <span lang=EN-IN style=''font-size: 14.0pt''>Start Date</span>
       </p>
       </td>
       <td valign=top
       style=''width:80%;border: solid windowtext 1.0pt; border-top: none; padding: 0in 5.4pt 0in 5.4pt''>
       <p class=MsoNormal align=center style=''margin-bottom: 0in; text-align: left; line-height: normal''>
       <span lang=EN-IN style=''font-size: 14.0pt''>$fromDate</span>
       </p>
       </td>
       </tr>
       <tr>
       <td valign=top
       style=''width:20%;border: solid windowtext 1.0pt; border-top: none; padding: 0in 5.4pt 0in 5.4pt''>
       <p class=MsoNormal align=center style=''margin-bottom: 0in; text-align: left; line-height: normal''>
       <span lang=EN-IN style=''font-size: 14.0pt''>End Date</span>
       </p>
       </td>
       <td valign=top
       style=''width:80%;border: solid windowtext 1.0pt; border-top: none; padding: 0in 5.4pt 0in 5.4pt''>
       <p class=MsoNormal align=center style=''margin-bottom: 0in; text-align: left; line-height: normal''>
       <span lang=EN-IN style=''font-size: 14.0pt''>$toDate</span>
       </p>
       </td>
       </tr>
       <tr>
       <td valign=top
       style=''width:20%;border: solid windowtext 1.0pt; border-top: none; padding: 0in 5.4pt 0in 5.4pt''>
       <p class=MsoNormal align=center style=''margin-bottom: 0in; text-align: left; line-height: normal''>
       <span lang=EN-IN style=''font-size: 14.0pt''>History Type</span>
       </p>
       </td>
       <td valign=top
       style=''width:80%;border: solid windowtext 1.0pt; border-top: none; padding: 0in 5.4pt 0in 5.4pt''>
       <p class=MsoNormal align=center style=''margin-bottom: 0in; text-align: left; line-height: normal''>
       <span lang=EN-IN style=''font-size: 14.0pt''>$serviceType</span>
       </p>
       </td>
       </tr>
       <tr>
       <td valign=top
       style=''width:20%;border: solid windowtext 1.0pt; border-top: none; padding: 0in 5.4pt 0in 5.4pt''>
       <p class=MsoNormal align=center style=''margin-bottom: 0in; text-align: left; line-height: normal''>
       <span lang=EN-IN style=''font-size: 14.0pt''>Status</span>
       </p>
       </td>
       <td valign=top
       style=''width:80%;border: solid windowtext 1.0pt; border-top: none; padding: 0in 5.4pt 0in 5.4pt''>
       <p class=MsoNormal align=center style=''margin-bottom: 0in; text-align: left; line-height: normal''>
       <span lang=EN-IN style=''font-size: 14.0pt''>$statusFilter</span>
       </p>
       </td>
       </tr>
       </table>
       <br><br>
       <table border=1 cellspacing=0 cellpadding=0 style=''width:90%;margin:auto;border-collapse: collapse; ''>
       <tr>
       <td valign=top
       style=''width:5%;border: solid windowtext 1.0pt; border-top: none; padding: 0in 5.4pt 0in 5.4pt''>
       <p class=MsoNormal align=center style=''margin-bottom: 0in; text-align: center; line-height: normal''>
       <b><span lang=EN-IN style=''font-size: 14.0pt''>S.No</span></b>
       </p>
       </td>
       <td valign=top
       style=''width:20%;border: solid windowtext 1.0pt; border-top: none; padding: 0in 5.4pt 0in 5.4pt''>
       <p class=MsoNormal align=center style=''margin-bottom: 0in; text-align: center; line-height: normal''>
       <b><span lang=EN-IN style=''font-size: 14.0pt''>Event Id</span></b>
       </p>
       </td>
       <td valign=top
       style=''width:45%;border: solid windowtext 1.0pt; border-top: none; padding: 0in 5.4pt 0in 5.4pt''>
       <p class=MsoNormal align=center style=''margin-bottom: 0in; text-align: center; line-height: normal''>
       <b><span lang=EN-IN style=''font-size: 14.0pt''>Description</span></b>
       </p>
       </td>
       <td valign=top
       style=''width:15%;border: solid windowtext 1.0pt; border-top: none; padding: 0in 5.4pt 0in 5.4pt''>
       <p class=MsoNormal align=center style=''margin-bottom: 0in; text-align: center; line-height: normal''>
       <b><span lang=EN-IN style=''font-size: 14.0pt''>Timestamp</span></b>
       </p>
       </td>
       <td valign=top
       style=''width:15%;border: solid windowtext 1.0pt; border-top: none; padding: 0in 5.4pt 0in 5.4pt''>
       <p class=MsoNormal align=center style=''margin-bottom: 0in; text-align: center; line-height: normal''>
       <b><span lang=EN-IN style=''font-size: 14.0pt''>Status</span></b>
       </p>
       </td>
       </tr>
       #foreach($dto in $serviceHistoryDtlsList)
       <tr>
       <td valign=top
       style=''width:5%;border: solid windowtext 1.0pt; border-top: none; padding: 0in 5.4pt 0in 5.4pt''>
       <p class=MsoNormal align=center style=''margin-bottom: 0in; text-align: left; line-height: normal''>
       <span lang=EN-IN style=''font-size: 14.0pt''>$dto.serialNumber</span>
       </p>
       </td>
       <td valign=top
       style=''width:20%;border: solid windowtext 1.0pt; border-top: none; padding: 0in 5.4pt 0in 5.4pt''>
       <p class=MsoNormal align=center style=''margin-bottom: 0in; text-align: left; line-height: normal''>
       <span lang=EN-IN style=''font-size: 14.0pt''>$dto.eventId</span>
       </p>
       </td>
       <td valign=top
       style=''width:45%;border: solid windowtext 1.0pt; border-top: none; padding: 0in 5.4pt 0in 5.4pt''>
       <p class=MsoNormal align=center style=''margin-bottom: 0in; text-align: left; line-height: normal''>
       <span lang=EN-IN style=''font-size: 14.0pt''>$dto.description</span>
       </p>
       </td>
       <td valign=top
       style=''width:15%;border: solid windowtext 1.0pt; border-top: none; padding: 0in 5.4pt 0in 5.4pt''>
       <p class=MsoNormal align=center style=''margin-bottom: 0in; text-align: left; line-height: normal''>
       <span lang=EN-IN style=''font-size: 14.0pt''>$dto.timeStamp</span>
       </p>
       </td>
       <td valign=top
       style=''width:15%;border: solid windowtext 1.0pt; border-top: none; padding: 0in 5.4pt 0in 5.4pt''>
       <p class=MsoNormal align=center style=''margin-bottom: 0in; text-align: left; line-height: normal''>
       <span lang=EN-IN style=''font-size: 14.0pt''>$dto.eventStatus</span>
       </p>
       </td>
       </tr>
       #end
       </table>
       <br/><br/><br/><br/><br/><br/><br/>
       </body>
      </html>', module_id='10006', module_name='Resident Services', template_typ_code='service-history-type', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1504' AND lang_code='eng';
     UPDATE master.template
     SET "name"='Acknowledgment Authentication Request', descr='Acknowledgment Authentication Request', file_format_code='html', model='velocity', file_txt='<html>

      <head>

      </head>

      <body lang=EN-US link=blue vlink=#954F72 style=''tab-interval:.5in;word-wrap:break-word''>

      <div class=WordSection1>

      <div>

      <p class=MsoNormal align=center style=''text-align:center''><span lang=EN-IN><img
      width=200 height=100 id=Picture 2
      src=$pdfHeaderLogo alt=MOSIP></span></p>
      <p class=MsoNormal align=center style=''text-align:center''><span lang=EN-IN><img
      width=50 height=50 id=partnerlogo
      src=$partnerLogo alt=partner logo></span></p>

      <table class=MsoNormalTable align=center border=0 cellspacing=0 cellpadding=0 width=586
       style=''width:439.4pt;border-collapse:collapse;mso-yfti-tbllook:
       1184;mso-padding-alt:0in 0in 0in 0in''>
       <tr style=''mso-yfti-irow:0;mso-yfti-firstrow:yes''>
       <td width=586 colspan=2 valign=top style=''width:439.4pt;border:solid windowtext 1.0pt;
       padding:0in 5.4pt 0in 5.4pt''>
       <p class=MsoListParagraph align=center style=''margin:0in;text-align:center''><b><span
       lang=EN-IN style=''font-family:Verdana,sans-serif;color:black;background:
       white;mso-ansi-language:EN-IN''>Request details</span></b></p>
       </td>
       </tr>

       <tr style=''mso-yfti-irow:1''>
       <td width=298 valign=top style=''width:223.35pt;border:solid windowtext 1.0pt;
       border-top:none;padding:0in 5.4pt 0in 5.4pt''>
       <p class=MsoListParagraph style=''margin:0in;text-align:justify''><span
       lang=EN-IN style=''font-family:Verdana,sans-serif;color:black;background:
       white;mso-ansi-language:EN-IN''>Event request timestamp</span></p></td>

       <td width=288 valign=top style=''width:216.05pt;border-top:none;border-left:
       none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
       padding:0in 5.4pt 0in 5.4pt''>
       <p class=MsoListParagraph style=''margin:0in''><span lang=EN-IN
       style=''font-family:Verdana,sans-serif;color:black;background:white;
       mso-ansi-language:EN-IN''>$timestamp</span></p></td>
       </tr>

       <tr style=''mso-yfti-irow:1''>
       <td width=298 valign=top style=''width:223.35pt;border:solid windowtext 1.0pt;
       border-top:none;padding:0in 5.4pt 0in 5.4pt''>
       <p class=MsoListParagraph style=''margin:0in;text-align:justify''><span
       lang=EN-IN style=''font-family:Verdana,sans-serif;color:black;background:
       white;mso-ansi-language:EN-IN''>Event ID</span></p></td>

       <td width=288 valign=top style=''width:216.05pt;border-top:none;border-left:
       none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
       padding:0in 5.4pt 0in 5.4pt''>
       <p class=MsoListParagraph style=''margin:0in''><span lang=EN-IN
       style=''font-family:Verdana,sans-serif;color:black;background:white;
       mso-ansi-language:EN-IN''>$eventId</span></p></td>
       </tr>

       <tr style=''mso-yfti-irow:1''>
       <td width=298 valign=top style=''width:223.35pt;border:solid windowtext 1.0pt;
       border-top:none;padding:0in 5.4pt 0in 5.4pt''>
       <p class=MsoListParagraph style=''margin:0in;text-align:justify''><span
       lang=EN-IN style=''font-family:Verdana,sans-serif;color:black;background:
       white;mso-ansi-language:EN-IN''>Authentication mode</span></p></td>

       <td width=288 valign=top style=''width:216.05pt;border-top:none;border-left:
       none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
       padding:0in 5.4pt 0in 5.4pt''>
       <p class=MsoListParagraph style=''margin:0in''><span lang=EN-IN
       style=''font-family:Verdana,sans-serif;color:black;background:white;
       mso-ansi-language:EN-IN''>$authenticationMode</span></p></td>
       </tr>
       <tr style=''mso-yfti-irow:1''>
       <td width=298 valign=top style=''width:223.35pt;border:solid windowtext 1.0pt;
       border-top:none;padding:0in 5.4pt 0in 5.4pt''>
       <p class=MsoListParagraph style=''margin:0in;text-align:justify''><span
       lang=EN-IN style=''font-family:Verdana,sans-serif;color:black;background:
       white;mso-ansi-language:EN-IN''>Event type</span></p></td>

       <td width=288 valign=top style=''width:216.05pt;border-top:none;border-left:
       none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
       padding:0in 5.4pt 0in 5.4pt''>
       <p class=MsoListParagraph style=''margin:0in''><span lang=EN-IN
       style=''font-family:Verdana,sans-serif;color:black;background:white;
       mso-ansi-language:EN-IN''>$eventType</span></p></td>
       </tr>
       <tr style=''mso-yfti-irow:1''>
       <td width=298 valign=top style=''width:223.35pt;border:solid windowtext 1.0pt;
       border-top:none;padding:0in 5.4pt 0in 5.4pt''>
       <p class=MsoListParagraph style=''margin:0in;text-align:justify''><span
       lang=EN-IN style=''font-family:Verdana,sans-serif;color:black;background:
       white;mso-ansi-language:EN-IN''>Event status</span></p></td>

       <td width=288 valign=top style=''width:216.05pt;border-top:none;border-left:
       none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
       padding:0in 5.4pt 0in 5.4pt''>
       <p class=MsoListParagraph style=''margin:0in''><span lang=EN-IN
       style=''font-family:Verdana,sans-serif;color:black;background:white;
       mso-ansi-language:EN-IN''>$eventStatus</span></p></td>
       </tr>
       <tr style=''mso-yfti-irow:1''>
       <td width=298 valign=top style=''width:223.35pt;border:solid windowtext 1.0pt;
       border-top:none;padding:0in 5.4pt 0in 5.4pt''>
       <p class=MsoListParagraph style=''margin:0in;text-align:justify''><span
       lang=EN-IN style=''font-family:Verdana,sans-serif;color:black;background:
       white;mso-ansi-language:EN-IN''>Summary</span></p></td>

       <td width=288 valign=top style=''width:216.05pt;border-top:none;border-left:
       none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
       padding:0in 5.4pt 0in 5.4pt''>
       <p class=MsoListParagraph style=''margin:0in''><span lang=EN-IN
       style=''font-family:Verdana,sans-serif;color:black;background:white;
       mso-ansi-language:EN-IN''>$summary</span></p></td>
       </tr>
      </table>

      <p class=MsoListParagraph align=center style=''text-align:center''><span
      lang=EN-IN style=''font-family:Verdana,sans-serif;color:black;background:white;
      mso-ansi-language:EN-IN''>&nbsp;</span></p>

      <p class=MsoListParagraph align=center style=''text-align:center''><span
      lang=EN-IN style=''font-family:Verdana,sans-serif;color:black;background:white;
      mso-ansi-language:EN-IN''>To view the status of your event, return to&nbsp;</span><span
      lang=EN-IN style=''mso-ansi-language:EN-IN''><a
      href=><span
      style=''font-family:Verdana,sans-serif;color:#004B91;background:white''><a href=$trackServiceRequestLink>event summary</a></span></a></span><span lang=EN-IN style=''font-family:Verdana,sans-serif;
      color:black;background:white;mso-ansi-language:EN-IN''>.</span></p>

      <p class=MsoNormal style=''mso-margin-top-alt:auto;mso-margin-bottom-alt:auto''><span
      lang=EN-IN style=''mso-ansi-language:EN-IN''>&nbsp;</span></p>

      </div>

      </div>

      </body>

      </html>', module_id='10006', module_name='Resident Services', template_typ_code='acknowledgment-authentication-request', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1505' AND lang_code='eng';
     UPDATE master.template
     SET "name"='Acknowledment Get My Id', descr='Acknowledment Get My Id', file_format_code='html', model='velocity', file_txt='<html>

      <head>

      </head>

      <body lang=EN-US link=blue vlink=#954F72 style=''tab-interval:.5in;word-wrap:break-word''>

      <div class=WordSection1>

      <div>

      <p class=MsoNormal align=center style=''text-align:center''><span lang=EN-IN><img
      width=200 height=100 id=Picture 2
      src=$pdfHeaderLogo alt=MOSIP></span></p>
      <p class=MsoNormal align=center style=''text-align:center''><span lang=EN-IN><img
      width=50 height=50 id=partnerlogo
      src=$partnerLogo alt=partner logo></span></p>

      <table class=MsoNormalTable align=center border=0 cellspacing=0 cellpadding=0 width=586
       style=''width:439.4pt;border-collapse:collapse;mso-yfti-tbllook:
       1184;mso-padding-alt:0in 0in 0in 0in''>
       <tr style=''mso-yfti-irow:0;mso-yfti-firstrow:yes''>
       <td width=586 colspan=2 valign=top style=''width:439.4pt;border:solid windowtext 1.0pt;
       padding:0in 5.4pt 0in 5.4pt''>
       <p class=MsoListParagraph align=center style=''margin:0in;text-align:center''><b><span
       lang=EN-IN style=''font-family:Verdana,sans-serif;color:black;background:
       white;mso-ansi-language:EN-IN''>Request details</span></b></p>
       </td>
       </tr>

       <tr style=''mso-yfti-irow:1''>
       <td width=298 valign=top style=''width:223.35pt;border:solid windowtext 1.0pt;
       border-top:none;padding:0in 5.4pt 0in 5.4pt''>
       <p class=MsoListParagraph style=''margin:0in;text-align:justify''><span
       lang=EN-IN style=''font-family:Verdana,sans-serif;color:black;background:
       white;mso-ansi-language:EN-IN''>Event request timestamp</span></p></td>

       <td width=288 valign=top style=''width:216.05pt;border-top:none;border-left:
       none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
       padding:0in 5.4pt 0in 5.4pt''>
       <p class=MsoListParagraph style=''margin:0in''><span lang=EN-IN
       style=''font-family:Verdana,sans-serif;color:black;background:white;
       mso-ansi-language:EN-IN''>$timestamp</span></p></td>
       </tr>

       <tr style=''mso-yfti-irow:1''>
       <td width=298 valign=top style=''width:223.35pt;border:solid windowtext 1.0pt;
       border-top:none;padding:0in 5.4pt 0in 5.4pt''>
       <p class=MsoListParagraph style=''margin:0in;text-align:justify''><span
       lang=EN-IN style=''font-family:Verdana,sans-serif;color:black;background:
       white;mso-ansi-language:EN-IN''>Event ID</span></p></td>

       <td width=288 valign=top style=''width:216.05pt;border-top:none;border-left:
       none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
       padding:0in 5.4pt 0in 5.4pt''>
       <p class=MsoListParagraph style=''margin:0in''><span lang=EN-IN
       style=''font-family:Verdana,sans-serif;color:black;background:white;
       mso-ansi-language:EN-IN''>$eventId</span></p></td>
       </tr>

       <tr style=''mso-yfti-irow:1''>
       <td width=298 valign=top style=''width:223.35pt;border:solid windowtext 1.0pt;
       border-top:none;padding:0in 5.4pt 0in 5.4pt''>
       <p class=MsoListParagraph style=''margin:0in;text-align:justify''><span
       lang=EN-IN style=''font-family:Verdana,sans-serif;color:black;background:
       white;mso-ansi-language:EN-IN''>Authentication mode</span></p></td>

       <td width=288 valign=top style=''width:216.05pt;border-top:none;border-left:
       none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
       padding:0in 5.4pt 0in 5.4pt''>
       <p class=MsoListParagraph style=''margin:0in''><span lang=EN-IN
       style=''font-family:Verdana,sans-serif;color:black;background:white;
       mso-ansi-language:EN-IN''>$authenticationMode</span></p></td>
       </tr>
       <tr style=''mso-yfti-irow:1''>
       <td width=298 valign=top style=''width:223.35pt;border:solid windowtext 1.0pt;
       border-top:none;padding:0in 5.4pt 0in 5.4pt''>
       <p class=MsoListParagraph style=''margin:0in;text-align:justify''><span
       lang=EN-IN style=''font-family:Verdana,sans-serif;color:black;background:
       white;mso-ansi-language:EN-IN''>Event type</span></p></td>

       <td width=288 valign=top style=''width:216.05pt;border-top:none;border-left:
       none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
       padding:0in 5.4pt 0in 5.4pt''>
       <p class=MsoListParagraph style=''margin:0in''><span lang=EN-IN
       style=''font-family:Verdana,sans-serif;color:black;background:white;
       mso-ansi-language:EN-IN''>$eventType</span></p></td>
       </tr>
       <tr style=''mso-yfti-irow:1''>
       <td width=298 valign=top style=''width:223.35pt;border:solid windowtext 1.0pt;
       border-top:none;padding:0in 5.4pt 0in 5.4pt''>
       <p class=MsoListParagraph style=''margin:0in;text-align:justify''><span
       lang=EN-IN style=''font-family:Verdana,sans-serif;color:black;background:
       white;mso-ansi-language:EN-IN''>Event status</span></p></td>

       <td width=288 valign=top style=''width:216.05pt;border-top:none;border-left:
       none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
       padding:0in 5.4pt 0in 5.4pt''>
       <p class=MsoListParagraph style=''margin:0in''><span lang=EN-IN
       style=''font-family:Verdana,sans-serif;color:black;background:white;
       mso-ansi-language:EN-IN''>$eventStatus</span></p></td>
       </tr>
       <tr style=''mso-yfti-irow:1''>
       <td width=298 valign=top style=''width:223.35pt;border:solid windowtext 1.0pt;
       border-top:none;padding:0in 5.4pt 0in 5.4pt''>
       <p class=MsoListParagraph style=''margin:0in;text-align:justify''><span
       lang=EN-IN style=''font-family:Verdana,sans-serif;color:black;background:
       white;mso-ansi-language:EN-IN''>Summary</span></p></td>

       <td width=288 valign=top style=''width:216.05pt;border-top:none;border-left:
       none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
       padding:0in 5.4pt 0in 5.4pt''>
       <p class=MsoListParagraph style=''margin:0in''><span lang=EN-IN
       style=''font-family:Verdana,sans-serif;color:black;background:white;
       mso-ansi-language:EN-IN''>$summary</span></p></td>
       </tr>
      </table>

      <p class=MsoListParagraph align=center style=''text-align:center''><span
      lang=EN-IN style=''font-family:Verdana,sans-serif;color:black;background:white;
      mso-ansi-language:EN-IN''>&nbsp;</span></p>

      <p class=MsoListParagraph align=center style=''text-align:center''><span
      lang=EN-IN style=''font-family:Verdana,sans-serif;color:black;background:white;
      mso-ansi-language:EN-IN''>To view the status of your event, return to&nbsp;</span><span
      lang=EN-IN style=''mso-ansi-language:EN-IN''><a
      href=><span
      style=''font-family:Verdana,sans-serif;color:#004B91;background:white''><a href=$trackServiceRequestLink>event summary</a></span></a></span><span lang=EN-IN style=''font-family:Verdana,sans-serif;
      color:black;background:white;mso-ansi-language:EN-IN''>.</span></p>

      <p class=MsoNormal style=''mso-margin-top-alt:auto;mso-margin-bottom-alt:auto''><span
      lang=EN-IN style=''mso-ansi-language:EN-IN''>&nbsp;</span></p>

      </div>

      </div>

      </body>

      </html>', module_id='10006', module_name='Resident Services', template_typ_code='acknowledgment-get-my-id', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1506' AND lang_code='eng';
     UPDATE master.template
     SET "name"='Acknowledgment vid card download', descr='Acknowledgment vid card download', file_format_code='html', model='velocity', file_txt='<html>

      <head>

      </head>

      <body lang=EN-US link=blue vlink=#954F72 style=''tab-interval:.5in;word-wrap:break-word''>

      <div class=WordSection1>

      <div>

      <p class=MsoNormal align=center style=''text-align:center''><span lang=EN-IN><img
      width=200 height=100 id=Picture 2
      src=$pdfHeaderLogo alt=MOSIP></span></p>
      <p class=MsoNormal align=center style=''text-align:center''><span lang=EN-IN><img
      width=50 height=50 id=partnerlogo
      src=$partnerLogo alt=partner logo></span></p>

      <table class=MsoNormalTable align=center border=0 cellspacing=0 cellpadding=0 width=586
       style=''width:439.4pt;border-collapse:collapse;mso-yfti-tbllook:
       1184;mso-padding-alt:0in 0in 0in 0in''>
       <tr style=''mso-yfti-irow:0;mso-yfti-firstrow:yes''>
       <td width=586 colspan=2 valign=top style=''width:439.4pt;border:solid windowtext 1.0pt;
       padding:0in 5.4pt 0in 5.4pt''>
       <p class=MsoListParagraph align=center style=''margin:0in;text-align:center''><b><span
       lang=EN-IN style=''font-family:Verdana,sans-serif;color:black;background:
       white;mso-ansi-language:EN-IN''>Request details</span></b></p>
       </td>
       </tr>

       <tr style=''mso-yfti-irow:1''>
       <td width=298 valign=top style=''width:223.35pt;border:solid windowtext 1.0pt;
       border-top:none;padding:0in 5.4pt 0in 5.4pt''>
       <p class=MsoListParagraph style=''margin:0in;text-align:justify''><span
       lang=EN-IN style=''font-family:Verdana,sans-serif;color:black;background:
       white;mso-ansi-language:EN-IN''>Event request timestamp</span></p></td>

       <td width=288 valign=top style=''width:216.05pt;border-top:none;border-left:
       none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
       padding:0in 5.4pt 0in 5.4pt''>
       <p class=MsoListParagraph style=''margin:0in''><span lang=EN-IN
       style=''font-family:Verdana,sans-serif;color:black;background:white;
       mso-ansi-language:EN-IN''>$timestamp</span></p></td>
       </tr>

       <tr style=''mso-yfti-irow:1''>
       <td width=298 valign=top style=''width:223.35pt;border:solid windowtext 1.0pt;
       border-top:none;padding:0in 5.4pt 0in 5.4pt''>
       <p class=MsoListParagraph style=''margin:0in;text-align:justify''><span
       lang=EN-IN style=''font-family:Verdana,sans-serif;color:black;background:
       white;mso-ansi-language:EN-IN''>Event ID</span></p></td>

       <td width=288 valign=top style=''width:216.05pt;border-top:none;border-left:
       none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
       padding:0in 5.4pt 0in 5.4pt''>
       <p class=MsoListParagraph style=''margin:0in''><span lang=EN-IN
       style=''font-family:Verdana,sans-serif;color:black;background:white;
       mso-ansi-language:EN-IN''>$eventId</span></p></td>
       </tr>

       <tr style=''mso-yfti-irow:1''>
       <td width=298 valign=top style=''width:223.35pt;border:solid windowtext 1.0pt;
       border-top:none;padding:0in 5.4pt 0in 5.4pt''>
       <p class=MsoListParagraph style=''margin:0in;text-align:justify''><span
       lang=EN-IN style=''font-family:Verdana,sans-serif;color:black;background:
       white;mso-ansi-language:EN-IN''>Authentication mode</span></p></td>

       <td width=288 valign=top style=''width:216.05pt;border-top:none;border-left:
       none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
       padding:0in 5.4pt 0in 5.4pt''>
       <p class=MsoListParagraph style=''margin:0in''><span lang=EN-IN
       style=''font-family:Verdana,sans-serif;color:black;background:white;
       mso-ansi-language:EN-IN''>$authenticationMode</span></p></td>
       </tr>
       <tr style=''mso-yfti-irow:1''>
       <td width=298 valign=top style=''width:223.35pt;border:solid windowtext 1.0pt;
       border-top:none;padding:0in 5.4pt 0in 5.4pt''>
       <p class=MsoListParagraph style=''margin:0in;text-align:justify''><span
       lang=EN-IN style=''font-family:Verdana,sans-serif;color:black;background:
       white;mso-ansi-language:EN-IN''>Event type</span></p></td>

       <td width=288 valign=top style=''width:216.05pt;border-top:none;border-left:
       none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
       padding:0in 5.4pt 0in 5.4pt''>
       <p class=MsoListParagraph style=''margin:0in''><span lang=EN-IN
       style=''font-family:Verdana,sans-serif;color:black;background:white;
       mso-ansi-language:EN-IN''>$eventType</span></p></td>
       </tr>
       <tr style=''mso-yfti-irow:1''>
       <td width=298 valign=top style=''width:223.35pt;border:solid windowtext 1.0pt;
       border-top:none;padding:0in 5.4pt 0in 5.4pt''>
       <p class=MsoListParagraph style=''margin:0in;text-align:justify''><span
       lang=EN-IN style=''font-family:Verdana,sans-serif;color:black;background:
       white;mso-ansi-language:EN-IN''>Event status</span></p></td>

       <td width=288 valign=top style=''width:216.05pt;border-top:none;border-left:
       none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
       padding:0in 5.4pt 0in 5.4pt''>
       <p class=MsoListParagraph style=''margin:0in''><span lang=EN-IN
       style=''font-family:Verdana,sans-serif;color:black;background:white;
       mso-ansi-language:EN-IN''>$eventStatus</span></p></td>
       </tr>
       <tr style=''mso-yfti-irow:1''>
       <td width=298 valign=top style=''width:223.35pt;border:solid windowtext 1.0pt;
       border-top:none;padding:0in 5.4pt 0in 5.4pt''>
       <p class=MsoListParagraph style=''margin:0in;text-align:justify''><span
       lang=EN-IN style=''font-family:Verdana,sans-serif;color:black;background:
       white;mso-ansi-language:EN-IN''>Summary</span></p></td>

       <td width=288 valign=top style=''width:216.05pt;border-top:none;border-left:
       none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
       padding:0in 5.4pt 0in 5.4pt''>
       <p class=MsoListParagraph style=''margin:0in''><span lang=EN-IN
       style=''font-family:Verdana,sans-serif;color:black;background:white;
       mso-ansi-language:EN-IN''>$summary</span></p></td>
       </tr>
      </table>

      <p class=MsoListParagraph align=center style=''text-align:center''><span
      lang=EN-IN style=''font-family:Verdana,sans-serif;color:black;background:white;
      mso-ansi-language:EN-IN''>&nbsp;</span></p>

      <p class=MsoListParagraph align=center style=''text-align:center''><span
      lang=EN-IN style=''font-family:Verdana,sans-serif;color:black;background:white;
      mso-ansi-language:EN-IN''>To view the status of your event, return to&nbsp;</span><span
      lang=EN-IN style=''mso-ansi-language:EN-IN''><a
      href=><span
      style=''font-family:Verdana,sans-serif;color:#004B91;background:white''><a href=$trackServiceRequestLink>event summary</a></span></a></span><span lang=EN-IN style=''font-family:Verdana,sans-serif;
      color:black;background:white;mso-ansi-language:EN-IN''>.</span></p>

      <p class=MsoNormal style=''mso-margin-top-alt:auto;mso-margin-bottom-alt:auto''><span
      lang=EN-IN style=''mso-ansi-language:EN-IN''>&nbsp;</span></p>

      </div>

      </div>

      </body>

      </html>', module_id='10006', module_name='Resident Services', template_typ_code='acknowledgment-vid-card-download', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1507' AND lang_code='eng';
     UPDATE master.template
     SET "name"='Vid Card Type', descr='Vid Card Type', file_format_code='html', model='velocity', file_txt='<html>

      <head>
      <meta http-equiv=Content-Type content=text/html; charset=windows-1252>
      <meta name=Generator content=Microsoft Word 15 (filtered)>
      <style>
      <!--
       /* Font Definitions */
       @font-face
      {font-family:Cambria Math;
      panose-1:2 4 5 3 5 4 6 3 2 4;}
      @font-face
      {font-family:Calibri;
      panose-1:2 15 5 2 2 2 4 3 2 4;}
       /* Style Definitions */
       p.MsoNormal, li.MsoNormal, div.MsoNormal
      {margin-top:0in;
      margin-right:0in;
      margin-bottom:8.0pt;
      margin-left:0in;
      line-height:107%;
      font-size:11.0pt;
      font-family:Calibri,sans-serif;}
      .MsoChpDefault
      {font-family:Calibri,sans-serif;}
      .MsoPapDefault
      {margin-bottom:8.0pt;
      line-height:107%;}
       /* Page Definitions */
       @page WordSection1
      {size:595.3pt 841.9pt;
      margin:1.0in 1.0in 1.0in 1.0in;}
      div.WordSection1
      {page:WordSection1;}
      -->
      </style>

      </head>

      <body lang=EN-US style=''word-wrap:break-word''>

      <div class=WordSection1>

      <p class=MsoNormal style=''line-height:normal''><span style=''position:relative;
      z-index:251659264''><span style=''position:absolute;left:-3px;top:-1px;
      width:352px;height:183px''><img width=352 height=183
      src=data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAWAAAAC3CAMAAAAb83RdAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAABjUExURQAAAECAn0Bwn0B1n0Bwn0BzmUBwmkBym0Bwm0BxnEBwnEBxnEBwnUBxmkBwm0Bxm0Jym0JxnUJynUJxnUJynUJxnEJynEFxnEFxnEFxnEFxnEFxnUFxnUFxnEFxnEFxnEFxnGJA1PgAAAAgdFJOUwAIEBggKDA4QEhQWGBocHiAh4+Xn6evt7/Hz9ff5+/3v+H4wgAAAAlwSFlzAAAOwwAADsMBx2+oZAAABGxJREFUeF7t2sli2jAURmFjAzHzECAGDOb9n7K68s3UQDBB/+58C8BqujlVZckku6FXTperqjpfcEdTVa/LeVl4uE7yybbxv46uqlnf890z3flfwYMO89wb/mJ88J/GH5zmPe94Q7n3n7zU2+VyVA58HDcVZblYvn5My3ri49fk74vDcTX0IXTUn1ce73BzLe4f25/YMm//pFi2W4Nz6QP/eWn3ZG9M3j8r1jFhM/PrbyYx//5GfXTT38bEa7/8YhL/YHvnJoi75jHkq199KOP8XfgVnjCKS+3cr1zfBpuxX+Epg9oKj/wqyuP+gb6JxOl6/roXe7O+rA/JlNaz/ryfje166xdIIN7pPpdhO+ft2T+ktAlJm/dHmHECc7xIqrBdme+GezaBd+1npGKLhE/hGRNYoHcKVdv7mj0F2sRPSMjmbWM3tsImcNdvO9CdHTfsaDEN7/t2CCnZkzVbGeyQwRlDwE4bp3BKtv0ET9gFenZgLuNjyqMPISk7bCzifu3Hw0ukYPuITbYKr0sfQVKjkHYX5/HUR5DUMKTdx2PGt2fDSMVOGHVmj9o5J2uEtJfMdmkP/WYgOrN9WlsZErEtgXUILEZgMQKLEViMwGIEFiOwGIHFCCxGYDECixFYjMBiBBYjsBiBxQgsRmAxAosRWIzAYgQWI7AYgcUILEZgMQKLEViMwGIEFiOwGIHFCCxGYDECixFYjMBiBBYjsBiBxQgsRmAxAosRWIzAYgQWI7AYgcUILEZgMQKLEViMwGIEFiOwGIHFCCxGYDECixFYjMBiBBYjsBiBxQgsRmAxAosRWIzAYgQWI7AYgcUILEZgMQKLEViMwGIEFiOwGIHFCCxGYDECixFYjMBiBBYjsBiBxQgsRmAxAosRWIzAYgQWI7AYgcUILEZgMQKLEViMwGIEFiOwGIHFCCxGYDECixFYjMBiBBYjsBiBxQgsRmAxAosRWIzAYgQWI7DYR+CeDyCtxgLX4aXvA0grBt6Hl9IHkFQe0p6yXXid+AiSGoS0x2wdXuc+gqTKkLbKFuF15SNIahrSbuLrm48gqVWcu7ZQNLkPIaVjSBtub/Y29SEk1PepuwzvWx9DQvMQtgrvLxaas1x6VQg7sw92lmOjltwwZG3PyHazOzGFU7MT3D5+KuzIvIgfkczYJvC4/WyHuaZoPyORQ4hqtziTn8LF2i+QxMQm8NAv4obifTojhYEtuzu/yLKeTeHmozeeldvOrPnymP3Fgtcsw4n0bAv8/Xgcl4wDjyTS2FjN/25qthm+1KwSCeRx/v54Qmn74kvDne5pA1t/L/WP1aD3ZuOXJUe650zOse+175HtvBEOzTy6fEJp3yGHE8b1u9nM9hLhXjfyazxoENfZXw5tZZzeIfFi4CPorJh53iY+o7yuaJeJoF6PSn4fpaO8LBf27CHa/T45+/7P4OyIh1+d/b99a3//l3iG7XYCf3Dsts0tprv2dodH7OcP3Ll642VV2ffN6OBUVevp1Sc5WfYPwR32gG13uhEAAAAASUVORK5CYII=>
      <img width=41 height=44
      src=$pdfHeaderLogo alt=mosip align=right hspace=12 style=margin-top:-172px;></span></span>
      <span style=margin-left: 16px;><b>Id type:</b> VID
      card</p></span>

      <p class=MsoNormal style=''margin-top:0in;margin-right:0in;margin-bottom:0in;
      line-height:normal''><img width=84 height=84
      src=$image alt=user image align=left hspace=12><b>Name:</b> $name</p>

      <p class=MsoNormal style=''margin-top:0in;margin-right:0in;margin-bottom:0in;
      line-height:normal''><b>DOB:</b> $dateOfBirth</p>

      <p class=MsoNormal style=''margin-top:0in;margin-right:0in;margin-bottom:0in;
      line-height:normal''><b>VID:</b> $vid</p>

      <p class=MsoNormal style=''margin-top:0in;margin-right:0in;margin-bottom:0in;
      line-height:normal''><b>VID Type:</b> $vidType</p>

      <p class=MsoNormal style=''margin-top:0in;margin-right:0in;margin-bottom:0in;
      line-height:normal''><b>Generated on:</b> $genratedOnTimestamp</p>

      <p class=MsoNormal style=''margin-top:0in;margin-right:0in;margin-bottom:0in;
      margin-left:1.12in;line-height:normal''><b>Expires on:</b> $expiryTimestamp</p>

      <p class=MsoNormal style=''margin-top:0in;margin-right:0in;margin-bottom:0in;
      margin-left:1.1in;line-height:normal''><b>Transactions left:</b> $transactionsLeftCount</p>

      </div>

      </body>

      </html>', module_id='10006', module_name='Resident Services', template_typ_code='vid-card-type', is_active=true, cr_by='superadmin', cr_dtimes=now(), upd_by=NULL, upd_dtimes=NULL, is_deleted=false, del_dtimes=NULL
     WHERE id='1508' AND lang_code='eng';