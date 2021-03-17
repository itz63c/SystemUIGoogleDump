.class abstract Lcom/google/android/systemui/dagger/SystemUIGoogleModule;
.super Ljava/lang/Object;
.source "SystemUIGoogleModule.java"


# direct methods
.method static provideAllowNotificationLongPress()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method static provideAssistantIconPaddingResourceId(Landroid/content/res/Resources;)I
    .locals 0

    .line 290
    sget p0, Lcom/android/systemui/R$dimen;->voice_reply_cta_padding:I

    return p0
.end method

.method static provideAssistantIconResourceId()I
    .locals 1

    .line 276
    sget v0, Lcom/android/systemui/R$drawable;->logo_assistant_color_24dp:I

    return v0
.end method

.method static provideAssistantIconSizeResourceId(Landroid/content/res/Resources;)I
    .locals 0

    .line 283
    sget p0, Lcom/android/systemui/R$dimen;->voice_reply_cta_size:I

    return p0
.end method

.method static provideBatteryController(Landroid/content/Context;Lcom/android/systemui/power/EnhancedEstimates;Landroid/os/PowerManager;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/demomode/DemoModeController;Landroid/os/Handler;Landroid/os/Handler;Lcom/android/systemui/settings/UserContentResolverProvider;Lcom/google/android/systemui/reversecharging/ReverseChargingController;)Lcom/android/systemui/statusbar/policy/BatteryController;
    .locals 11

    .line 141
    new-instance v10, Lcom/google/android/systemui/statusbar/policy/BatteryControllerImplGoogle;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/google/android/systemui/statusbar/policy/BatteryControllerImplGoogle;-><init>(Landroid/content/Context;Lcom/android/systemui/power/EnhancedEstimates;Landroid/os/PowerManager;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/demomode/DemoModeController;Landroid/os/Handler;Landroid/os/Handler;Lcom/android/systemui/settings/UserContentResolverProvider;Lcom/google/android/systemui/reversecharging/ReverseChargingController;)V

    .line 144
    invoke-interface {v10}, Lcom/android/systemui/statusbar/policy/BatteryController;->init()V

    return-object v10
.end method

.method static provideDockManager(Landroid/content/Context;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;Lcom/android/systemui/statusbar/policy/ConfigurationController;)Lcom/android/systemui/dock/DockManager;
    .locals 8

    .line 179
    new-instance v7, Lcom/google/android/systemui/dreamliner/DockObserver;

    .line 181
    invoke-static {p0}, Lcom/google/android/systemui/dreamliner/DreamlinerUtils;->getInstance(Landroid/content/Context;)Lcom/google/android/systemui/dreamliner/WirelessCharger;

    move-result-object v2

    move-object v0, v7

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/systemui/dreamliner/DockObserver;-><init>(Landroid/content/Context;Lcom/google/android/systemui/dreamliner/WirelessCharger;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;Lcom/android/systemui/statusbar/policy/ConfigurationController;)V

    return-object v7
.end method

.method static provideHeadsUpManagerPhone(Landroid/content/Context;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/statusbar/notification/collection/render/GroupMembershipManager;Lcom/android/systemui/statusbar/policy/ConfigurationController;)Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;
    .locals 7

    .line 216
    new-instance v6, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;-><init>(Landroid/content/Context;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/statusbar/notification/collection/render/GroupMembershipManager;Lcom/android/systemui/statusbar/policy/ConfigurationController;)V

    return-object v6
.end method

.method static provideIThermalService()Landroid/os/IThermalService;
    .locals 1

    const-string v0, "thermalservice"

    .line 205
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IThermalService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IThermalService;

    move-result-object v0

    return-object v0
.end method

.method static provideIndividualSensorPrivacyController(Landroid/hardware/SensorPrivacyManager;)Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;
    .locals 1

    .line 161
    new-instance v0, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyControllerImpl;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyControllerImpl;-><init>(Landroid/hardware/SensorPrivacyManager;)V

    .line 163
    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;->init()V

    return-object v0
.end method

.method static provideLeakReportEmail()Ljava/lang/String;
    .locals 1

    const-string v0, "buganizer-system+187317@google.com"

    return-object v0
.end method

.method public static provideNotifVoiceReplyLogBuffer(Lcom/android/systemui/log/LogBufferFactory;)Lcom/android/systemui/log/LogBuffer;
    .locals 2

    const-string v0, "NotifVoiceReplyLog"

    const/16 v1, 0x1f4

    .line 301
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/log/LogBufferFactory;->create(Ljava/lang/String;I)Lcom/android/systemui/log/LogBuffer;

    move-result-object p0

    return-object p0
.end method

.method static provideRecents(Landroid/content/Context;Lcom/android/systemui/recents/RecentsImplementation;Lcom/android/systemui/statusbar/CommandQueue;)Lcom/android/systemui/recents/Recents;
    .locals 1

    .line 231
    new-instance v0, Lcom/android/systemui/recents/Recents;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/recents/Recents;-><init>(Landroid/content/Context;Lcom/android/systemui/recents/RecentsImplementation;Lcom/android/systemui/statusbar/CommandQueue;)V

    return-object v0
.end method

.method static provideReverseWirelessCharger(Landroid/content/Context;)Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Optional<",
            "Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;",
            ">;"
        }
    .end annotation

    .line 192
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$bool;->config_wlc_support_enabled:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    new-instance v0, Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method static provideSensorPrivacyController(Landroid/hardware/SensorPrivacyManager;)Lcom/android/systemui/statusbar/policy/SensorPrivacyController;
    .locals 1

    .line 152
    new-instance v0, Lcom/android/systemui/statusbar/policy/SensorPrivacyControllerImpl;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/SensorPrivacyControllerImpl;-><init>(Landroid/hardware/SensorPrivacyManager;)V

    .line 153
    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/SensorPrivacyController;->init()V

    return-object v0
.end method

.method static provideUsbManager(Landroid/content/Context;)Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Optional<",
            "Landroid/hardware/usb/UsbManager;",
            ">;"
        }
    .end annotation

    .line 199
    const-class v0, Landroid/hardware/usb/UsbManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/usb/UsbManager;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method
