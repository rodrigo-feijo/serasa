*** Settings ***
Library     AppiumLibrary

*** Test Cases ***
Buscar opções de hospedagem
    Open Application        http://localhost:4723/wd/hub
    ...                     automationName=UiAutomator2
    ...                     platformName=Android
    ...                     deviceName=MyPhone
    ...                     app=${EXECDIR}/Hoteis.com.apk
    ...                     udid=647de0f7044d

    Wait Until Element is Visible      id=com.hcom.android:id/enable_notifications_button       10
    Click Element                      id=com.hcom.android:id/enable_notifications_button

    Wait Until Element is Visible      id=com.hcom.android:id/reboarding_skip_button            10
    Click Element                      id=com.hcom.android:id/reboarding_skip_button

    Wait Until Element is Visible      id=com.hcom.android:id/hp_text_search                    10
    Click Element                      id=com.hcom.android:id/hp_text_search 
    
    Wait Until Element is Visible      id=com.hcom.android:id/search_field                      10
    Input Text                         id=com.hcom.android:id/search_field                      São Paulo     
    Sleep                              3    # Internet lenta, precisei colocar para rodar (má prática)
    Click Element                      xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/androidx.recyclerview.widget.RecyclerView/android.widget.FrameLayout[2]/android.widget.RelativeLayout/android.widget.TextView

    Wait Until Element is Visible      id=com.hcom.android:id/ser_for_p_date_check_in           10
    Click Element                      id=com.hcom.android:id/ser_for_p_date_check_in 
    
    Click Element                      xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.view.ViewGroup/androidx.recyclerview.widget.RecyclerView/android.widget.LinearLayout[1]/android.widget.LinearLayout[2]/android.widget.RelativeLayout[5]/android.widget.FrameLayout/android.widget.TextView
    Click Element                      xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.view.ViewGroup/androidx.recyclerview.widget.RecyclerView/android.widget.LinearLayout[1]/android.widget.LinearLayout[3]/android.widget.RelativeLayout[1]/android.widget.FrameLayout/android.widget.TextView
     
    Wait Until Element is Visible      id=com.hcom.android:id/sqm_apply_button                  10
    Click Element                      id=com.hcom.android:id/sqm_apply_button
    Sleep                              5    # Internet lenta, precisei colocar para rodar (má prática)
    Swipe                              500  400  400  0  100  

    Capture Page Screenshot
    Close Application