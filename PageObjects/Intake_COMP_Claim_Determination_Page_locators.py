

# Claim Determination Information
#----------------------------------------------------------------#


# Buttons
Button_cancel = "Cancel Application"
Buton_SAVE_EXIT = "Save & Next"
Button_Save_Next = "Save & Exit"
Button_Previous = "Previous"



# Checkboxes

# Check the type of Compensation Benefits you are requesting
CHK_Medical_Expense_Benefits_Victim = "xpath://*[@id='step-buttons']/div[2]/div/app-claim/form[1]/div[2]/div[1]/div[2]/div/roots-checkbox/div/div[2]"
CHK_Loss_Earning_Benefits_the_Victim = "xpath//*[@id='step-buttons']/div[2]/div/app-claim/form[1]/div[2]/div[1]/div[3]/div/roots-checkbox/div/div[2]"
CHK_Counseling = "xpath://*[@id='step-buttons']/div[2]/div/app-claim/form[1]/div[2]/div[1]/div[4]/div/roots-checkbox/div/div[2]"
CHK_GRIEF_Counseling = "xpath://*[@id='step-buttons']/div[2]/div/app-claim/form[1]/div[2]/div[1]/div[5]/div/roots-checkbox/div/div[2]"
CHK_Funeral_Benefits_the_Survivor = "xpath://*[@id='step-buttons']/div[2]/div/app-claim/form[1]/div[2]/div[1]/div[6]/div/roots-checkbox/div/div[2]"
CHK_LOSS_SUPPORT_BENEFITS_SURVIVOR = "xpath://*[@id='step-buttons']/div[2]/div/app-claim/form[1]/div[2]/div[1]/div[7]/div/roots-checkbox/div/div[2]"
CHK_Crime_Scene_Cleanup = "xpath://*[@id='step-buttons']/div[2]/div/app-claim/form[1]/div[2]/div[1]/div[8]/div/roots-checkbox/div/div[2]"






# Radio buttons

# Have you or will you suffer a minimum out-of-pocket loss of $200?

RB_MIN_LOSSOF200_YES = "xpath://*[@id='step-buttons']/div[2]/div/app-claim/form[1]/div[2]/div[2]/div[1]/div/div[2]/div/roots-radiobutton/div/div[2]"
RB_MIN_LOSSOF200_NO = ""

# Have you lost at least two continuous weeks of earnings?

RB_LOST_TWO_CNT_EARN_YES = "xpath://*[@id='step-buttons']/div[2]/div/app-claim/form[1]/div[2]/div[2]/div[2]/div/div[2]/div/roots-radiobutton/div/div[2]"
B_LOST_TWO_CNT_EARN_NO = ""


# Is your injury the result of a Criminal Sexual Assault? (waivers may apply)

RB_CRIMINAL_SA_YES = "xpath://*[@id='step-buttons']/div[2]/div/app-claim/form[1]/div[2]/div[3]/div[1]/div/div[2]/div/roots-radiobutton/div/div[2]"
RB_CRIMINAL_SA_NO = ""

# Are you retired by reason of age or disability? (waivers may apply)

RB_RTD_AGE_DIS_YES = "xpath://*[@id='step-buttons']/div[2]/div/app-claim/form[1]/div[2]/div[3]/div[2]/div/div[2]/div/roots-radiobutton/div/div[2]"
RB_RTD_AGE_DIS_NO = ""






# Complete if you are applying for MEDICAL, DENTAL, COUNSELING
#-----------------------------------------------------------------------------------------------#

# Checkboxes
CHK_Health_Insurance1 = "xpath://*[@id='step-buttons']/div[2]/div/app-claim/form[2]/div[2]/div[1]/div[2]/div/roots-checkbox/div/div[2]"
CHK_Medicare1 = "xpath://*[@id='step-buttons']/div[2]/div/app-claim/form[2]/div[2]/div[1]/div[3]/div/roots-checkbox/div/div[2]"
CHK_Automobile_Insurance1 = "xpath://*[@id='step-buttons']/div[2]/div/app-claim/form[2]/div[2]/div[1]/div[4]/div/roots-checkbox/div/div[2]"


# Radio buttons

# Did the victim receive charity care payments donations or other insurance settlement from any other source due to this incident?

RB_Ch_PA_DO_OT_YES = "xpath://*[@id='step-buttons']/div[2]/div/app-claim/form[2]/div[2]/div[2]/div/div/div/div[1]/roots-radiobutton/div/div[2]"
RB_Ch_PA_DO_OT_NO = ""
RB_Ch_PA_DO_OT_UNKNOWN = ""



# Will additional medical treatment be required? (If yes, please explain)

RB_MED_TRT_YES = "xpath://*[@id='step-buttons']/div[2]/div/app-claim/form[2]/div[2]/div[3]/div/div/div/div/div[1]/roots-radiobutton/div/div[2]"
RB_MED_TRT_NO = ""
RB_MED_TRT_UNKNOWN = ""



# Text box

Text_Other1 = ""

Text_VC_CHarity_care_pay_DON1 = "xpath:/html/body/app-root/div/app-secured/section/app-steps/div/section/div/div[2]/div/app-claim/form[2]/div[2]/div[2]/div/div/div/div[1]/div/input"

Text_ad_med_Trt_Required = "xpath:/html/body/app-root/div/app-secured/section/app-steps/div/section/div/div[2]/div/app-claim/form[2]/div[2]/div[3]/div/div/div/div[2]/div/div/textarea"

Text_Primary_Medical_Insurer = "xpath://*[@id='primaryInsurer']"



# Complete if the victim is deceased and you are applying for FUNERAL EXPENSES, GRIEF COUNSELING, CRIME SCENE CLEAN-UP, LOSS OF SUPPORT
#--------------------------------------------------------------------------------------------------------------------------------------------#


# checkboxes

# Indicate which of the following sources (if any) are available to pay any medical bills or out-of-pocket expenses: (check ALL that apply).

CHK_Life_Insurance = ""
CHK_Health_Insurance = ""
CHK_Social_Security_Death = ""



# Radio buttons

# Did the victim receive charity care, payments, donations, or other insurance settlement from any other source due to this incident?

RB_Ch_PA_DO_OT_YES1 = ""
RB_Ch_PA_DO_OT_NO1 = ""
RB_Ch_PA_DO_OT_UNKNOWN1 = ""


# Text box:
Text_Other2 = ""
Text_VC_CHarity_care_pay_DON2 = ""



# Complete if you are applying for LOSS OF EARNINGS
#----------------------------------------------------------------#

# Text Boxes
Text_Victim_Employer_Name = "id:victimEmployer"
Text_Victim_Employer_Ph_Num1 = "id:employeerPhoneNumber"
Text_Employer_Add1 = "xpath://*[@id='empAddress']"
Text_Employer_Add2 = "xpath://*[@id='empAddress2']"
Text_Doctor_who_will_verify_medical_disability = "xpath:/html/body/app-root/div/app-secured/section/app-steps/div/section/div/div[2]/div/app-claim/form[4]/div[2]/div[2]/div[3]/div/input"
Text_Victim_Supervisor_name = "xpath:/html/body/app-root/div/app-secured/section/app-steps/div/section/div/div[2]/div/app-claim/form[4]/div[2]/div[2]/div[4]/div/input"



# Dates absent from work due to crime related injuries:

Text_From = "xpath://*[@id='step-buttons']/div[2]/div/app-claim/form[4]/div[2]/div[3]/div/div/div[1]/div/roots-calendar/span/input"


# Radio buttons:
RB_TO_UNKNOWN = ""
RB_TO_PRESENT = "xpath://*[@id='step-buttons']/div[2]/div/app-claim/form[4]/div[2]/div[3]/div/div/div[2]/div/div/div[2]/roots-radiobutton/div/div[2]"
RB_TO_TODATE = ""


# CheckBoxes:
#Indicate which of the following sources are available to pay for loss of earnings:

CHK_LNG_SHT_TRM_DISABLITy = ""
CHK_WRKS_COMPEN = ""
CHK_SOCIAL_SECURITY = ""
CHK_NONE = "xpath://*[@id='step-buttons']/div[2]/div/app-claim/form[4]/div[2]/div[4]/div[5]/div/roots-checkbox/div/div[2]"
CHK_OTHER = ""

TEXT_OTHER = ""


