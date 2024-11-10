# F5_DevOps
Home assignment for DevOps Engineer - Intern

<div dir="rtl">
המשימה כוללת שני קונטיינרים ב-Docker שמנוהלים באמצעות Docker Compose:

1. **קונטיינר Nginx**: 
   - מקשיב לשני פורטים: 8080 ו-8081.
   - **פורט 8080**: מחזיר דף HTML מותאם אישית עם הודעת הצלחה.
   - **פורט 8081**: מחזיר שגיאת 404 כדי לדמות תגובה כושלת.

2. **קונטיינר בדיקות**:
   - מבצע בדיקות HTTP על שני הקצוות בעזרת ספריית `requests` של Python.
   - אם השרת ב-port 8080 מחזיר קוד סטטוס 200 והשרת ב-port 8081 מחזיר קוד סטטוס 404, הבדיקה נחשבת להצלחה.

</div>

![image](https://github.com/user-attachments/assets/2010c714-03dc-4cc0-a7a2-9a4408937e29)
