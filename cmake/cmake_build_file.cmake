
SET(RABBITIM_SOURCES
    MainWindow.cpp 
    common/Tool.cpp 
    common/QRCode.cpp 
    Client/Client.cpp 
    UserInfo/UserInfo.cpp 
    UserInfo/COperateRoster.cpp 
    Global/Global.cpp 
    Widgets/FrmLogin/FrmLogin.cpp 
    Widgets/FrmUserList/FrmUserList.cpp 
    Widgets/FrmUserList/GroupItem.cpp 
    Widgets/FrmCustom/CustomTreeView.cpp 
    Widgets/FrmVideo/RecordAudio.cpp 
    Widgets/FrmCustom/Label.cpp  
    Widgets/FrmMain/FrmMain.cpp  
    Manage/Manager.cpp 
    Manage/ManageMessageDialog.cpp 
    Widgets/FrmMessage/FrmMessage.cpp 
    Widgets/FrmCustom/MenuMessageSend.cpp  
    Manage/ManageMessageDialogBigScreen.cpp 
    Widgets/FrmMessage/FrmContainer.cpp 
    Message/ChatActions/ChatAction.cpp 
    Message/ChatActions/MessageAction.cpp 
    UserInfo/User.cpp 
    Manage/ManageUser.cpp 
    Manage/Manage.cpp 
    Message/SmileyPack.cpp 
    Message/EmoticonsWidget.cpp 
    Message/style.cpp 
    Widgets/FrmRecentMessage/FrmRecentMsgList.cpp 
    Widgets/FrmRecentMessage/ManageRecentMessage.cpp 
    Widgets/DlgAddRoster/DlgAddRoster.cpp 
    FileTransfer/ManageFileTransfer.cpp 
    FileTransfer/FileTransfer.cpp 
    FileTransfer/FileTransferAction.cpp 
    Widgets/FrmVideo/DataVideoBuffer.cpp 
    Widgets/FrmVideo/FrameProcess.cpp 
    Widgets/FrmVideo/FrmPlayer.cpp  
    Call/CallObject.cpp 
    Call/ManageCall.cpp 
    Call/CallAction.cpp 
    Widgets/FrmVideo/FrmVideo.cpp  
    Widgets/DlgRegister/DlgRegister.cpp 
    Widgets/FrmGroupChat/FrmGroupChatList.cpp  
    Widgets/FrmLogin/DlgLoginSettings.cpp 
    Widgets/FrmGroupChat/DlgCreateGroupChatRoom.cpp 
    Widgets/FrmGroupChat/ManageGroupChat.cpp 
    Widgets/FrmGroupChat/GroupChat.cpp 
    Widgets/FrmGroupChat/DlgJoinGroupChat.cpp 
    Widgets/FrmGroupChat/FrmGroupChat.cpp 
    Widgets/FrmGroupChat/ChatActionGroupChat.cpp 
    Widgets/FrmGroupChat/DlgGroupChatInfo.cpp 
    Widgets/FrmGroupChat/DlgInviter.cpp 
    Widgets/FrmCustom/ItemModelCustom.cpp 
    Widgets/DlgUservCard/DlgUservCard.cpp  
    Widgets/DlgAbout/DlgAbout.cpp 
    Widgets/DlgOptions/DlgOptions.cpp   
    Message/ManageMessage.cpp 
    Media/Camera/Camera.cpp 
    Media/Camera/CameraInfo.cpp 
    Media/Camera/CameraFactory.cpp 
    Media/Camera/VideoFrame.cpp 
    Media/Camera/CameraQt.cpp 
    Media/Camera/CameraFactoryQt.cpp 
    Media/Camera/CameraQtCaptureVideoFrame.cpp 
    Global/Log.cpp 
    Global/GlobalDir.cpp 
    Widgets/FrmApp/FrmApp.cpp 
    Widgets/FrmApp/FrmAppList.cpp 
    Widgets/FrmApp/FrmFavorites.cpp 
    Plugin/PluginApp.cpp 
    Plugin/PluginProtocol.cpp 
    Plugin/ManagePluginApp.cpp 
    Plugin/ManagePluginProtocol.cpp
    Widgets/MainAnimation.cpp
)

SET(RABBITIM_UIS
    MainWindow.ui 
    Widgets/FrmLogin/FrmLogin.ui 
    Widgets/FrmUserList/FrmUserList.ui 
    Widgets/DlgUservCard/DlgUservCard.ui 
    Widgets/FrmMessage/FrmMessage.ui 
    Widgets/FrmMessage/FrmContainer.ui 
    Widgets/FrmRecentMessage/FrmRecentMsgList.ui 
    Widgets/DlgAddRoster/DlgAddRoster.ui 
    Widgets/FrmVideo/FrmVideo.ui  
    Widgets/DlgRegister/DlgRegister.ui 
    Widgets/FrmGroupChat/FrmGroupChatList.ui  
    Widgets/FrmLogin/DlgLoginSettings.ui  
    Widgets/FrmGroupChat/DlgCreateGroupChatRoom.ui 
    Widgets/FrmGroupChat/FrmGroupChat.ui 
    Widgets/FrmGroupChat/DlgJoinGroupChat.ui 
    Widgets/FrmGroupChat/DlgGroupChatInfo.ui 
    Widgets/FrmGroupChat/DlgInviter.ui 
    Widgets/DlgAbout/DlgAbout.ui 
    Widgets/DlgOptions/DlgOptions.ui 
    Widgets/FrmMain/FrmMain.ui 
    Widgets/FrmApp/FrmApp.ui 
    Widgets/FrmApp/FrmAppList.ui 
    Widgets/FrmApp/FrmFavorites.ui 
)

IF(RABBITIM_USE_OPENCV) 
    SET(RABBITIM_SOURCES ${RABBITIM_SOURCES} Widgets/FrmVideo/CameraOpencv.cpp)
ENDIF(RABBITIM_USE_OPENCV)

IF(RABBITIM_USE_OPENSSL)
    SET(RABBITIM_SOURCES
        ${RABBITIM_SOURCES}
        Global/Encrypt.cpp
    )
ENDIF(RABBITIM_USE_OPENSSL)

IF(ANDROID)
    SET(RABBITIM_SOURCES
        ${RABBITIM_SOURCES}
        android/jni/AndroidNotification.cpp
    )
ENDIF(ANDROID)

IF(RABBITIM_USE_PJSIP) 
    SET(RABBITIM_SOURCES
        ${RABBITIM_SOURCES}
        Media/Camera/CameraPjsip.cpp 
        Media/Camera/CameraFactoryPjsip.cpp
    )       
ENDIF(RABBITIM_USE_PJSIP)
