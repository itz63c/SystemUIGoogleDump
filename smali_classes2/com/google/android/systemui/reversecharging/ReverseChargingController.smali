.class public Lcom/google/android/systemui/reversecharging/ReverseChargingController;
.super Landroid/content/BroadcastReceiver;
.source "ReverseChargingController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/CallbackController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/systemui/reversecharging/ReverseChargingController$ReverseChargingChangeCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/BroadcastReceiver;",
        "Lcom/android/systemui/statusbar/policy/CallbackController<",
        "Lcom/google/android/systemui/reversecharging/ReverseChargingController$ReverseChargingChangeCallback;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final DURATION_TO_ADVANCED_ACCESSORY_DEVICE_RECONNECTED_TIME_OUT:J

.field private static final DURATION_TO_ADVANCED_PLUS_ACCESSORY_DEVICE_RECONNECTED_TIME_OUT:J

.field private static final DURATION_TO_REVERSE_AC_TIME_OUT:J

.field private static final DURATION_TO_REVERSE_RX_REMOVAL_TIME_OUT:J

.field private static final DURATION_TO_REVERSE_TIME_OUT:J

.field private static final DURATION_WAIT_NFC_SERVICE:J


# instance fields
.field private final mAccessoryDeviceRemovedTimeoutAlarmAction:Landroid/app/AlarmManager$OnAlarmListener;

.field private final mAlarmManager:Landroid/app/AlarmManager;

.field final mBatteryStateChangeCallback:Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;

.field private final mBgExecutor:Ljava/util/concurrent/Executor;

.field private final mBootCompleteCache:Lcom/android/systemui/BootCompleteCache;

.field private final mBootCompleteListener:Lcom/android/systemui/BootCompleteCache$BootCompleteListener;

.field private final mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field private mCacheIsReverseSupported:Z

.field private final mChangeCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/systemui/reversecharging/ReverseChargingController$ReverseChargingChangeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mCheckNfcConflictWithUsbAudioAlarmAction:Landroid/app/AlarmManager$OnAlarmListener;

.field private final mContext:Landroid/content/Context;

.field mCurrentRtxMode:I

.field private mCurrentRtxReceiverType:I

.field final mDoesNfcConflictWithUsbAudio:Z

.field private final mDoesNfcConflictWithWlc:Z

.field private mIsReverseSupported:Z

.field mIsUsbPlugIn:Z

.field private mLevel:I

.field private final mMainExecutor:Ljava/util/concurrent/Executor;

.field private mName:Ljava/lang/String;

.field private final mNfcInterfaceToken:Landroid/os/IBinder;

.field final mNfcUsbProductIds:[I

.field final mNfcUsbVendorIds:[I

.field private mPluggedAc:Z

.field private mPowerSave:Z

.field private mProvidingBattery:Z

.field private final mReconnectedTimeoutAlarmAction:Landroid/app/AlarmManager$OnAlarmListener;

.field mRestoreUsbNfcPollingMode:Z

.field private mRestoreWlcNfcPollingMode:Z

.field mReverse:Z

.field private mReverseStartTime:J

.field private mReverseStopTime:J

.field private final mRtxChargerManagerOptional:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;",
            ">;"
        }
    .end annotation
.end field

.field private final mRtxFinishAlarmAction:Landroid/app/AlarmManager$OnAlarmListener;

.field private final mRtxFinishRxFullAlarmAction:Landroid/app/AlarmManager$OnAlarmListener;

.field private mRtxLevel:I

.field private mStartReconnected:Z

.field private mStopReverseAtAcUnplug:Z

.field private final mUsbManagerOptional:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Landroid/hardware/usb/UsbManager;",
            ">;"
        }
    .end annotation
.end field

.field private mUseRxRemovalTimeOut:Z

.field private mWirelessCharging:Z


# direct methods
.method public static synthetic $r8$lambda$0uN3Qo37LZ7_827qyN8EOE-jBD4(Lcom/google/android/systemui/reversecharging/ReverseChargingController;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$5p2kg9OXdhPuOCD_4P3A41osyxU(Lcom/google/android/systemui/reversecharging/ReverseChargingController;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->lambda$onDockPresentChanged$7(Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BLmn1_oH357FTBlDiEdB4e08z_o(Lcom/google/android/systemui/reversecharging/ReverseChargingController;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->lambda$new$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$F3u8td7y9a6F4IzCtn9LLPyfiEo(Lcom/google/android/systemui/reversecharging/ReverseChargingController;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->onDockPresentChanged(Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$M7sexPp3tPjpYYUlPppZ4JhikQQ(Lcom/google/android/systemui/reversecharging/ReverseChargingController;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->lambda$new$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$OYQ3BqpKRs1sQaVjNG6KwawuUEg(Lcom/google/android/systemui/reversecharging/ReverseChargingController;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->lambda$new$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$WaRVcVcyrQ1IfeFqZQK5AK9Xe24(Lcom/google/android/systemui/reversecharging/ReverseChargingController;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->lambda$onDockPresentChanged$6()V

    return-void
.end method

.method public static synthetic $r8$lambda$fYAEHPtltT5GhlK5m5UEV_v2QNI(Lcom/google/android/systemui/reversecharging/ReverseChargingController;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->onReverseInformationChanged(Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$iQYRQoYBaDcUHPnU3Ir8smdSCe0(Lcom/google/android/systemui/reversecharging/ReverseChargingController;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->lambda$onReverseInformationChanged$8(Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vwHzW56dgc3rDOIkLnNyYeBIwlg(Lcom/google/android/systemui/reversecharging/ReverseChargingController;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->lambda$new$5()V

    return-void
.end method

.method public static synthetic $r8$lambda$xWKO5fe0W_wHhT2mdvHG7HQhqGk(Lcom/google/android/systemui/reversecharging/ReverseChargingController;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->lambda$onReverseStateChanged$9(Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zpIYzoNq6M0KXrQKPVwDPJ3hSig(Lcom/google/android/systemui/reversecharging/ReverseChargingController;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->lambda$new$2()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 5

    const-string v0, "ReverseChargingControl"

    const/4 v1, 0x3

    .line 102
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->DEBUG:Z

    .line 108
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    sput-wide v3, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->DURATION_TO_REVERSE_TIME_OUT:J

    .line 109
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->DURATION_TO_REVERSE_AC_TIME_OUT:J

    .line 110
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1e

    .line 111
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    sput-wide v1, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->DURATION_TO_REVERSE_RX_REMOVAL_TIME_OUT:J

    const-wide/16 v1, 0x78

    .line 113
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    sput-wide v3, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->DURATION_TO_ADVANCED_ACCESSORY_DEVICE_RECONNECTED_TIME_OUT:J

    .line 115
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    sput-wide v1, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->DURATION_TO_ADVANCED_PLUS_ACCESSORY_DEVICE_RECONNECTED_TIME_OUT:J

    const-wide/16 v1, 0xa

    .line 117
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->DURATION_WAIT_NFC_SERVICE:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/broadcast/BroadcastDispatcher;Ljava/util/Optional;Landroid/app/AlarmManager;Ljava/util/Optional;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/android/systemui/BootCompleteCache;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
            "Ljava/util/Optional<",
            "Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;",
            ">;",
            "Landroid/app/AlarmManager;",
            "Ljava/util/Optional<",
            "Landroid/hardware/usb/UsbManager;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/android/systemui/BootCompleteCache;",
            ")V"
        }
    .end annotation

    .line 228
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 126
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mNfcInterfaceToken:Landroid/os/IBinder;

    .line 143
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mChangeCallbacks:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 147
    iput v0, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mCurrentRtxMode:I

    .line 149
    iput-boolean v0, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mIsUsbPlugIn:Z

    .line 154
    iput v0, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mCurrentRtxReceiverType:I

    .line 155
    iput-boolean v0, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mProvidingBattery:Z

    const-wide/16 v0, 0x0

    .line 165
    iput-wide v0, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mReverseStartTime:J

    .line 166
    iput-wide v0, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mReverseStopTime:J

    .line 170
    new-instance v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController-$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/reversecharging/ReverseChargingController-$$ExternalSyntheticLambda5;-><init>(Lcom/google/android/systemui/reversecharging/ReverseChargingController;)V

    iput-object v0, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mBootCompleteListener:Lcom/android/systemui/BootCompleteCache$BootCompleteListener;

    .line 183
    new-instance v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController-$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/reversecharging/ReverseChargingController-$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/systemui/reversecharging/ReverseChargingController;)V

    iput-object v0, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mRtxFinishAlarmAction:Landroid/app/AlarmManager$OnAlarmListener;

    .line 187
    new-instance v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController-$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/reversecharging/ReverseChargingController-$$ExternalSyntheticLambda4;-><init>(Lcom/google/android/systemui/reversecharging/ReverseChargingController;)V

    iput-object v0, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mRtxFinishRxFullAlarmAction:Landroid/app/AlarmManager$OnAlarmListener;

    .line 191
    new-instance v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController-$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/reversecharging/ReverseChargingController-$$ExternalSyntheticLambda2;-><init>(Lcom/google/android/systemui/reversecharging/ReverseChargingController;)V

    iput-object v0, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mCheckNfcConflictWithUsbAudioAlarmAction:Landroid/app/AlarmManager$OnAlarmListener;

    .line 195
    new-instance v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController-$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/reversecharging/ReverseChargingController-$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/systemui/reversecharging/ReverseChargingController;)V

    iput-object v0, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mReconnectedTimeoutAlarmAction:Landroid/app/AlarmManager$OnAlarmListener;

    .line 203
    new-instance v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController-$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/reversecharging/ReverseChargingController-$$ExternalSyntheticLambda3;-><init>(Lcom/google/android/systemui/reversecharging/ReverseChargingController;)V

    iput-object v0, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mAccessoryDeviceRemovedTimeoutAlarmAction:Landroid/app/AlarmManager$OnAlarmListener;

    .line 210
    new-instance v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController$1;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/reversecharging/ReverseChargingController$1;-><init>(Lcom/google/android/systemui/reversecharging/ReverseChargingController;)V

    iput-object v0, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mBatteryStateChangeCallback:Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;

    .line 229
    iput-object p1, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mContext:Landroid/content/Context;

    .line 230
    iput-object p2, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 232
    iput-object p3, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mRtxChargerManagerOptional:Ljava/util/Optional;

    .line 233
    iput-object p4, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mAlarmManager:Landroid/app/AlarmManager;

    .line 235
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/android/systemui/R$bool;->config_nfc_conflict_with_wlc:I

    .line 236
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mDoesNfcConflictWithWlc:Z

    .line 238
    iput-object p5, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mUsbManagerOptional:Ljava/util/Optional;

    .line 239
    iput-object p6, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mMainExecutor:Ljava/util/concurrent/Executor;

    .line 240
    iput-object p7, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mBgExecutor:Ljava/util/concurrent/Executor;

    .line 241
    iput-object p8, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mBootCompleteCache:Lcom/android/systemui/BootCompleteCache;

    .line 243
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/android/systemui/R$array;->config_nfc_conflict_with_usb_audio_vendorid:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mNfcUsbVendorIds:[I

    .line 246
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p4, Lcom/android/systemui/R$array;->config_nfc_conflict_with_usb_audio_productid:I

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mNfcUsbProductIds:[I

    .line 248
    array-length p2, p2

    array-length p3, p3

    if-ne p2, p3, :cond_0

    .line 251
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$bool;->config_nfc_conflict_with_usb_audio:I

    .line 252
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mDoesNfcConflictWithUsbAudio:Z

    return-void

    .line 249
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "VendorIds and ProductIds must be the same length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic access$002(Lcom/google/android/systemui/reversecharging/ReverseChargingController;Z)Z
    .locals 0

    .line 98
    iput-boolean p1, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mPowerSave:Z

    return p1
.end method

.method static synthetic access$102(Lcom/google/android/systemui/reversecharging/ReverseChargingController;Z)Z
    .locals 0

    .line 98
    iput-boolean p1, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mWirelessCharging:Z

    return p1
.end method

.method private cancelRtxTimer(I)V
    .locals 1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 822
    :cond_0
    iget-object p1, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object p0, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mAccessoryDeviceRemovedTimeoutAlarmAction:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {p1, p0}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    goto :goto_0

    .line 819
    :cond_1
    iget-object p1, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object p0, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mReconnectedTimeoutAlarmAction:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {p1, p0}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    goto :goto_0

    .line 816
    :cond_2
    iget-object p1, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object p0, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mRtxFinishRxFullAlarmAction:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {p1, p0}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    goto :goto_0

    .line 813
    :cond_3
    iget-object p1, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object p0, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mRtxFinishAlarmAction:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {p1, p0}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    :goto_0
    return-void
.end method

.method private checkAndChangeNfcPollingAgainstUsbAudioDevice(ZLandroid/hardware/usb/UsbDevice;)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 266
    :goto_0
    iget-object v2, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mNfcUsbVendorIds:[I

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 267
    invoke-virtual {p2}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mNfcUsbVendorIds:[I

    aget v3, v3, v1

    if-ne v2, v3, :cond_1

    .line 268
    invoke-virtual {p2}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mNfcUsbProductIds:[I

    aget v3, v3, v1

    if-ne v2, v3, :cond_1

    xor-int/lit8 p2, p1, 0x1

    .line 269
    iput-boolean p2, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mRestoreUsbNfcPollingMode:Z

    .line 270
    iget-boolean p2, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mRestoreWlcNfcPollingMode:Z

    if-nez p2, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-direct {p0, v0}, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->enableNfcPollingMode(Z)V

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private checkNfcConflictWithUsbAudioBootTask()V
    .locals 3

    .line 257
    iget-object v0, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mUsbManagerOptional:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mUsbManagerOptional:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbManager;->getDeviceList()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/usb/UsbDevice;

    const/4 v2, 0x0

    .line 259
    invoke-direct {p0, v2, v1}, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->checkAndChangeNfcPollingAgainstUsbAudioDevice(ZLandroid/hardware/usb/UsbDevice;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private enableNfcPollingMode(Z)V
    .locals 3

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x1000

    .line 533
    :goto_0
    sget-boolean v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->DEBUG:Z

    const-string v1, "ReverseChargingControl"

    if-eqz v0, :cond_1

    .line 534
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Change NFC reader mode to flags: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :try_start_0
    const-string v0, "nfc"

    .line 538
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 537
    invoke-static {v0}, Landroid/nfc/INfcAdapter$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcAdapter;

    move-result-object v0

    .line 539
    iget-object p0, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mNfcInterfaceToken:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-interface {v0, p0, v2, p1, v2}, Landroid/nfc/INfcAdapter;->setReaderMode(Landroid/os/IBinder;Landroid/nfc/IAppCallback;ILandroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 541
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Could not change NFC reader mode, exception: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method private fireReverseChanged()V
    .locals 8

    .line 759
    iget-object v0, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mChangeCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    .line 761
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 763
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    .line 765
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/systemui/reversecharging/ReverseChargingController$ReverseChargingChangeCallback;

    iget-boolean v5, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mReverse:Z

    iget v6, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mRtxLevel:I

    iget-object v7, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mName:Ljava/lang/String;

    invoke-interface {v4, v5, v6, v7}, Lcom/google/android/systemui/reversecharging/ReverseChargingController$ReverseChargingChangeCallback;->onReverseChargingChanged(ZILjava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 767
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private getRtxTimeOut(I)J
    .locals 3

    .line 547
    iget-boolean v0, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mStartReconnected:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x10

    if-ne p1, v0, :cond_0

    .line 549
    sget-wide v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->DURATION_TO_ADVANCED_ACCESSORY_DEVICE_RECONNECTED_TIME_OUT:J

    goto :goto_0

    .line 550
    :cond_0
    sget-wide v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->DURATION_TO_ADVANCED_PLUS_ACCESSORY_DEVICE_RECONNECTED_TIME_OUT:J

    goto :goto_0

    .line 552
    :cond_1
    iget-boolean p1, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mStopReverseAtAcUnplug:Z

    if-eqz p1, :cond_2

    .line 553
    sget-wide v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->DURATION_TO_REVERSE_AC_TIME_OUT:J

    goto :goto_0

    .line 554
    :cond_2
    iget-boolean p1, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mUseRxRemovalTimeOut:Z

    if-eqz p1, :cond_3

    .line 555
    sget-wide v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->DURATION_TO_REVERSE_RX_REMOVAL_TIME_OUT:J

    goto :goto_0

    .line 556
    :cond_3
    sget-wide v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->DURATION_TO_REVERSE_TIME_OUT:J

    .line 560
    :goto_0
    iget-boolean p0, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mStopReverseAtAcUnplug:Z

    if-eqz p0, :cond_4

    const-string p0, "rtx.ac.timeout"

    goto :goto_1

    :cond_4
    const-string p0, "rtx.timeout"

    .line 559
    :goto_1
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 561
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 563
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 565
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRtxTimeOut(): invalid timeout, "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ReverseChargingControl"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_2
    return-wide v0
.end method

.method private isLowBattery()Z
    .locals 3

    .line 417
    iget-object v0, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "advanced_battery_usage_amount"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x5

    .line 420
    iget v1, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mLevel:I

    if-gt v1, v0, :cond_0

    .line 421
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The battery is lower than threshold turn off reverse charging ! level : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mLevel:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", threshold : "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ReverseChargingControl"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$new$0()V
    .locals 3

    .line 172
    sget-boolean v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ReverseChargingControl"

    const-string v1, "onBootComplete(): ACTION_BOOT_COMPLETED, setRtxTimer, REVERSE_FINISH"

    .line 173
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    .line 177
    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->setRtxTimer(IJ)V

    const/4 v0, 0x2

    .line 180
    sget-wide v1, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->DURATION_WAIT_NFC_SERVICE:J

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->setRtxTimer(IJ)V

    return-void
.end method

.method private synthetic lambda$new$1()V
    .locals 1

    const/4 v0, 0x5

    .line 184
    invoke-direct {p0, v0}, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->onAlarmRtxFinish(I)V

    return-void
.end method

.method private synthetic lambda$new$2()V
    .locals 1

    const/16 v0, 0x67

    .line 188
    invoke-direct {p0, v0}, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->onAlarmRtxFinish(I)V

    return-void
.end method

.method private synthetic lambda$new$3()V
    .locals 0

    .line 192
    invoke-direct {p0}, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->checkNfcConflictWithUsbAudioBootTask()V

    return-void
.end method

.method private synthetic lambda$new$4()V
    .locals 2

    .line 196
    sget-boolean v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ReverseChargingControl"

    const-string v1, "mReConnectedTimeoutAlarmAction() timeout"

    .line 197
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    .line 199
    iput-boolean v0, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mStartReconnected:Z

    const/4 v0, 0x6

    .line 200
    invoke-direct {p0, v0}, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->onAlarmRtxFinish(I)V

    return-void
.end method

.method private synthetic lambda$new$5()V
    .locals 2

    .line 204
    sget-boolean v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ReverseChargingControl"

    const-string v1, "mAccessoryDeviceRemovedTimeoutAlarmAction() timeout"

    .line 205
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x6

    .line 207
    invoke-direct {p0, v0}, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->onAlarmRtxFinish(I)V

    return-void
.end method

.method private synthetic lambda$onDockPresentChanged$6()V
    .locals 0

    .line 581
    invoke-direct {p0}, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->requestReverseInformation()V

    return-void
.end method

.method private synthetic lambda$onDockPresentChanged$7(Landroid/os/Bundle;)V
    .locals 0

    .line 584
    invoke-direct {p0, p1}, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->onDockPresentChangedOnMainThread(Landroid/os/Bundle;)V

    return-void
.end method

.method private synthetic lambda$onReverseInformationChanged$8(Landroid/os/Bundle;)V
    .locals 0

    .line 608
    invoke-direct {p0, p1}, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->onReverseInformationChangedOnMainThread(Landroid/os/Bundle;)V

    return-void
.end method

.method private synthetic lambda$onReverseStateChanged$9(Landroid/os/Bundle;)V
    .locals 0

    .line 634
    invoke-direct {p0, p1}, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->onReverseStateChangedOnMainThread(Landroid/os/Bundle;)V

    return-void
.end method

.method private logReverseAccessoryType(I)V
    .locals 1

    .line 846
    sget-boolean p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->DEBUG:Z

    if-eqz p0, :cond_0

    .line 847
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "logReverseAccessoryType: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ReverseChargingControl"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_1

    .line 850
    invoke-static {p1}, Lcom/google/android/systemui/reversecharging/ReverseChargingMetrics;->logReceiverType(I)V

    :cond_1
    return-void
.end method

.method private logReverseStartEvent(I)V
    .locals 2

    .line 829
    sget-boolean v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 830
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "logReverseStartEvent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ReverseChargingControl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mReverseStartTime:J

    .line 833
    iget p0, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mLevel:I

    invoke-static {p1, p0}, Lcom/google/android/systemui/reversecharging/ReverseChargingMetrics;->logStartEvent(II)V

    return-void
.end method

.method private logReverseStateChanged(II)V
    .locals 3

    .line 855
    iget v0, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mCurrentRtxMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    if-eq p1, v1, :cond_7

    iget-boolean v2, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mReverse:Z

    if-eqz v2, :cond_7

    const/16 v0, 0x8

    const/4 v2, 0x2

    if-eqz p2, :cond_5

    const/4 p1, 0x4

    if-eq p2, v1, :cond_4

    const/4 v1, 0x3

    if-eq p2, v2, :cond_3

    if-eq p2, v1, :cond_2

    if-eq p2, p1, :cond_1

    const/16 p1, 0xf

    if-eq p2, p1, :cond_0

    goto :goto_0

    .line 874
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->logReverseStopEvent(I)V

    goto :goto_0

    :cond_1
    const/16 p1, 0x6e

    .line 871
    invoke-direct {p0, p1}, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->logReverseStopEvent(I)V

    goto :goto_0

    :cond_2
    const/16 p1, 0x66

    .line 868
    invoke-direct {p0, p1}, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->logReverseStopEvent(I)V

    goto :goto_0

    .line 880
    :cond_3
    invoke-direct {p0, v1}, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->logReverseStopEvent(I)V

    goto :goto_0

    .line 877
    :cond_4
    invoke-direct {p0, p1}, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->logReverseStopEvent(I)V

    goto :goto_0

    :cond_5
    if-ne p1, v2, :cond_6

    .line 858
    iget p1, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mCurrentRtxReceiverType:I

    if-eqz p1, :cond_6

    .line 862
    invoke-direct {p0, v0}, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->logReverseStopEvent(I)V

    goto :goto_0

    .line 864
    :cond_6
    invoke-direct {p0, v1}, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->logReverseStopEvent(I)V

    .line 885
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Reverse charging error happened : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ReverseChargingControl"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_7
    if-eq v0, v1, :cond_8

    if-ne p1, v1, :cond_8

    .line 886
    iget-boolean p1, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mReverse:Z

    if-nez p1, :cond_8

    .line 887
    invoke-direct {p0, v1}, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->logReverseStartEvent(I)V

    :cond_8
    :goto_1
    return-void
.end method

.method private logReverseStopEvent(I)V
    .locals 5

    .line 837
    sget-boolean v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 838
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "logReverseStopEvent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ReverseChargingControl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mReverseStopTime:J

    .line 841
    iget v2, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mLevel:I

    iget-wide v3, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mReverseStartTime:J

    sub-long/2addr v0, v3

    const-wide/16 v3, 0x3e8

    div-long/2addr v0, v3

    invoke-static {p1, v2, v0, v1}, Lcom/google/android/systemui/reversecharging/ReverseChargingMetrics;->logStopEvent(IIJ)V

    return-void
.end method

.method private onAlarmRtxFinish(I)V
    .locals 2

    .line 802
    iget-boolean v0, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mReverse:Z

    if-eqz v0, :cond_1

    .line 803
    sget-boolean v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ReverseChargingControl"

    const-string v1, "onAlarmRtxFinish(): rtx=0"

    .line 804
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    .line 806
    invoke-direct {p0, v0, p1}, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->setReverseStateInternal(ZI)V

    :cond_1
    return-void
.end method

.method private onDockPresentChanged(Landroid/os/Bundle;)V
    .locals 3

    .line 572
    sget-boolean v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->DEBUG:Z

    const-string v1, "key_dock_present_type"

    if-eqz v0, :cond_0

    .line 573
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDockPresentChanged(): rtx ="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mReverse:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " type="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 574
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " bundle="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " this="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ReverseChargingControl"

    .line 573
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    return-void

    .line 580
    :cond_1
    iget-object v0, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mBgExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/systemui/reversecharging/ReverseChargingController-$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Lcom/google/android/systemui/reversecharging/ReverseChargingController-$$ExternalSyntheticLambda9;-><init>(Lcom/google/android/systemui/reversecharging/ReverseChargingController;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 583
    iget-object v0, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mMainExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/systemui/reversecharging/ReverseChargingController-$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0, p1}, Lcom/google/android/systemui/reversecharging/ReverseChargingController-$$ExternalSyntheticLambda10;-><init>(Lcom/google/android/systemui/reversecharging/ReverseChargingController;Landroid/os/Bundle;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private onDockPresentChangedOnMainThread(Landroid/os/Bundle;)V
    .locals 3

    .line 589
    sget-boolean v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->DEBUG:Z

    const-string v1, "key_dock_present_type"

    if-eqz v0, :cond_0

    .line 590
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDockPresentChangedOnMainThread(): rtx ="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mReverse:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " type="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 591
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " bundle="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " this="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ReverseChargingControl"

    .line 590
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->reverse_charging_device_name_text:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 595
    :goto_0
    iput-object p1, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mName:Ljava/lang/String;

    return-void
.end method

.method private onReverseInformationChanged(Landroid/os/Bundle;)V
    .locals 3

    .line 599
    sget-boolean v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 600
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReverseInformationChanged(): rtx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "key_rtx_mode"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 601
    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " wlc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mWirelessCharging:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " bundle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 602
    invoke-virtual {p1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " this="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ReverseChargingControl"

    .line 600
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string v0, "key_rtx_level"

    .line 604
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_2

    return-void

    .line 607
    :cond_2
    iget-object v0, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mMainExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/systemui/reversecharging/ReverseChargingController-$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0, p1}, Lcom/google/android/systemui/reversecharging/ReverseChargingController-$$ExternalSyntheticLambda11;-><init>(Lcom/google/android/systemui/reversecharging/ReverseChargingController;Landroid/os/Bundle;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private onReverseInformationChangedOnMainThread(Landroid/os/Bundle;)V
    .locals 5

    .line 613
    sget-boolean v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->DEBUG:Z

    const/4 v1, 0x0

    const-string v2, "key_rtx_mode"

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    .line 614
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReverseInformationChangedOnMainThread(): rtx="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v3, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v1

    .line 615
    :goto_0
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " wlc="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 616
    iget-boolean v4, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mWirelessCharging:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mName="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " bundle="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 617
    invoke-virtual {p1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " this="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "ReverseChargingControl"

    .line 614
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mWirelessCharging:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mName:Ljava/lang/String;

    if-nez v0, :cond_2

    goto :goto_1

    .line 622
    :cond_2
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v3, :cond_3

    move v1, v3

    :cond_3
    iput-boolean v1, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mReverse:Z

    const-string v0, "key_rtx_level"

    .line 623
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mRtxLevel:I

    .line 624
    invoke-direct {p0}, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->fireReverseChanged()V

    :cond_4
    :goto_1
    return-void
.end method

.method private onReverseStateChangedOnMainThread(Landroid/os/Bundle;)V
    .locals 10

    .line 639
    sget-boolean v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->DEBUG:Z

    const-string v1, "onReverseStateChangedOnMainThread(): rtx="

    const-string v2, "key_rtx_mode"

    const-string v3, "ReverseChargingControl"

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v0, :cond_1

    .line 640
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    if-ne v7, v5, :cond_0

    move v7, v5

    goto :goto_0

    :cond_0
    move v7, v4

    .line 641
    :goto_0
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " bundle="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " this="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 640
    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v6, "key_reason_type"

    .line 644
    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    const-string v7, "key_rtx_connection"

    .line 645
    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    const-string v8, "key_accessory_type"

    .line 646
    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    const-string v9, "key_rtx_level"

    .line 647
    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 649
    iget-boolean v9, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mReverse:Z

    if-nez v9, :cond_3

    iget-boolean v9, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mWirelessCharging:Z

    if-eqz v9, :cond_3

    if-nez v2, :cond_3

    if-lez p1, :cond_3

    .line 650
    iput p1, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mRtxLevel:I

    .line 651
    iget-object p1, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mName:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 652
    iget-object p1, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->reverse_charging_device_name_text:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mName:Ljava/lang/String;

    .line 654
    :cond_2
    invoke-direct {p0}, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->fireReverseChanged()V

    return-void

    .line 657
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->isReverseSupported()Z

    move-result v9

    if-nez v9, :cond_4

    .line 658
    invoke-direct {p0}, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->resetReverseInfo()V

    .line 659
    invoke-direct {p0}, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->fireReverseChanged()V

    return-void

    .line 663
    :cond_4
    invoke-direct {p0, v2, v6}, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->logReverseStateChanged(II)V

    .line 665
    iget v6, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mCurrentRtxMode:I

    if-eq v6, v5, :cond_5

    if-ne v2, v5, :cond_5

    iget-boolean v6, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mReverse:Z

    if-nez v6, :cond_5

    iget-boolean v6, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mDoesNfcConflictWithWlc:Z

    if-eqz v6, :cond_5

    iget-boolean v6, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mRestoreWlcNfcPollingMode:Z

    if-nez v6, :cond_5

    .line 667
    invoke-direct {p0, v4}, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->enableNfcPollingMode(Z)V

    .line 668
    iput-boolean v5, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mRestoreWlcNfcPollingMode:Z

    .line 671
    :cond_5
    iput v2, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mCurrentRtxMode:I

    .line 672
    invoke-direct {p0}, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->resetReverseInfo()V

    const/4 v6, -0x1

    if-ne v2, v5, :cond_9

    .line 675
    invoke-direct {p0, v7, v8}, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->playSoundIfNecessary(ZI)V

    .line 676
    iput-boolean v7, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mProvidingBattery:Z

    .line 677
    iput-boolean v5, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mReverse:Z

    if-nez v7, :cond_7

    if-eqz v0, :cond_6

    const-string p1, "receiver is not available"

    .line 681
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    :cond_6
    iput v6, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mRtxLevel:I

    .line 684
    iput v4, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mCurrentRtxReceiverType:I

    goto :goto_1

    .line 686
    :cond_7
    iput-boolean v4, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mStopReverseAtAcUnplug:Z

    .line 687
    iput p1, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mRtxLevel:I

    .line 688
    iput-boolean v5, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mUseRxRemovalTimeOut:Z

    .line 689
    iget p1, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mCurrentRtxReceiverType:I

    if-eq p1, v8, :cond_a

    if-eqz v0, :cond_8

    .line 691
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "receiver type updated: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mCurrentRtxReceiverType:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    :cond_8
    invoke-direct {p0, v8}, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->logReverseAccessoryType(I)V

    .line 695
    iput v8, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mCurrentRtxReceiverType:I

    goto :goto_1

    .line 699
    :cond_9
    iput-boolean v4, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mStopReverseAtAcUnplug:Z

    .line 700
    iput-boolean v4, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mProvidingBattery:Z

    .line 701
    iput-boolean v4, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mUseRxRemovalTimeOut:Z

    .line 702
    iput-boolean v4, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mStartReconnected:Z

    .line 704
    iget-boolean p1, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mDoesNfcConflictWithWlc:Z

    if-eqz p1, :cond_a

    iget-boolean p1, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mRestoreWlcNfcPollingMode:Z

    if-eqz p1, :cond_a

    .line 705
    iput-boolean v4, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mRestoreWlcNfcPollingMode:Z

    .line 706
    iget-boolean p1, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mRestoreUsbNfcPollingMode:Z

    xor-int/2addr p1, v5

    invoke-direct {p0, p1}, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->enableNfcPollingMode(Z)V

    .line 710
    :cond_a
    :goto_1
    invoke-direct {p0}, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->fireReverseChanged()V

    .line 711
    invoke-direct {p0, v4}, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->cancelRtxTimer(I)V

    .line 712
    invoke-direct {p0, v5}, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->cancelRtxTimer(I)V

    const/4 p1, 0x4

    .line 713
    invoke-direct {p0, p1}, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->cancelRtxTimer(I)V

    .line 714
    iget-boolean v2, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mStartReconnected:Z

    const/4 v7, 0x3

    if-nez v2, :cond_b

    .line 715
    invoke-direct {p0, v7}, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->cancelRtxTimer(I)V

    .line 718
    :cond_b
    iget-boolean v2, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mReverse:Z

    if-eqz v2, :cond_f

    iget v9, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mRtxLevel:I

    if-ne v9, v6, :cond_f

    .line 719
    invoke-direct {p0, v8}, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->getRtxTimeOut(I)J

    move-result-wide v1

    if-eqz v0, :cond_c

    .line 721
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReverseStateChangedOnMainThread(): time out, setRtxTimer, duration="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    :cond_c
    iget-boolean v0, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mStartReconnected:Z

    if-eqz v0, :cond_d

    move v4, v7

    goto :goto_2

    .line 728
    :cond_d
    iget-boolean v0, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mUseRxRemovalTimeOut:Z

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mStopReverseAtAcUnplug:Z

    if-nez v0, :cond_e

    move v4, p1

    .line 733
    :cond_e
    :goto_2
    invoke-direct {p0, v4, v1, v2}, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->setRtxTimer(IJ)V

    goto :goto_3

    :cond_f
    if-eqz v2, :cond_11

    .line 734
    iget p1, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mRtxLevel:I

    const/16 v2, 0x64

    if-lt p1, v2, :cond_11

    if-eqz v0, :cond_10

    .line 736
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mReverse:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", Rx fully charged, setRtxTimer, REVERSE_FINISH_RX_FULL"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    const-wide/16 v0, 0x0

    .line 739
    invoke-direct {p0, v5, v0, v1}, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->setRtxTimer(IJ)V

    :cond_11
    :goto_3
    return-void
.end method

.method private playSoundIfNecessary(ZI)V
    .locals 8

    .line 894
    iget-boolean v0, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mProvidingBattery:Z

    const/16 v1, 0x5a

    const/16 v2, 0x10

    const-string v3, ", accType : "

    const-string v4, "ReverseChargingControl"

    const/4 v5, 0x0

    if-nez v0, :cond_3

    if-eqz p1, :cond_3

    .line 895
    sget-boolean v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 896
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "playSoundIfNecessary() play start charging sound: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", mStartReconnected : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mStartReconnected:Z

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    :cond_0
    iget-boolean p1, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mStartReconnected:Z

    if-eqz p1, :cond_1

    if-eq p2, v2, :cond_2

    if-eq p2, v1, :cond_2

    .line 903
    :cond_1
    iget-object p1, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mContext:Landroid/content/Context;

    sget p2, Lcom/android/systemui/R$string;->reverse_charging_started_sound:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    :cond_2
    const/4 p1, 0x0

    .line 906
    iput-boolean p1, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mStartReconnected:Z

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_6

    if-nez p1, :cond_6

    .line 908
    sget-boolean v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->DEBUG:Z

    if-eqz v0, :cond_4

    .line 909
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "playSoundIfNecessary() play end charging sound: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", mStartReConnected : "

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mStartReconnected:Z

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    :cond_4
    iget-boolean p1, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mStartReconnected:Z

    if-nez p1, :cond_6

    if-eq p2, v2, :cond_5

    if-ne p2, v1, :cond_6

    :cond_5
    const/4 p1, 0x1

    .line 917
    iput-boolean p1, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mStartReconnected:Z

    if-eqz v0, :cond_6

    const-string p1, "playSoundIfNecessary() start reconnected"

    .line 919
    invoke-static {v4, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    :cond_6
    :goto_0
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 925
    new-instance p1, Landroid/net/Uri$Builder;

    invoke-direct {p1}, Landroid/net/Uri$Builder;-><init>()V

    const-string p2, "file"

    invoke-virtual {p1, p2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 926
    invoke-virtual {p1, v5}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 927
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    .line 928
    iget-object p2, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mContext:Landroid/content/Context;

    invoke-static {p2, p1}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object p1

    .line 929
    invoke-virtual {p0, p1}, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->playSound(Landroid/media/Ringtone;)V

    :cond_7
    return-void
.end method

.method private registerReceiver()V
    .locals 2

    .line 277
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    .line 278
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    .line 279
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 280
    iget-object v1, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    invoke-virtual {v1, p0, v0}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method private requestReverseInformation()V
    .locals 3

    .line 475
    sget-boolean v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->DEBUG:Z

    const-string v1, "ReverseChargingControl"

    if-eqz v0, :cond_0

    const-string v2, "requestReverseInformation()"

    .line 476
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    :cond_0
    iget-object v2, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mRtxChargerManagerOptional:Ljava/util/Optional;

    invoke-virtual {v2}, Ljava/util/Optional;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 479
    iget-object p0, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mRtxChargerManagerOptional:Ljava/util/Optional;

    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;

    invoke-virtual {p0}, Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;->getRtxInformation()V

    return-void

    :cond_1
    if-eqz v0, :cond_2

    const-string p0, "requestReverseInformation(): mRtxChargerManagerOptional is not present!"

    .line 483
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method private resetReverseInfo()V
    .locals 1

    const/4 v0, 0x0

    .line 753
    iput-boolean v0, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mReverse:Z

    const/4 v0, -0x1

    .line 754
    iput v0, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mRtxLevel:I

    const/4 v0, 0x0

    .line 755
    iput-object v0, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mName:Ljava/lang/String;

    return-void
.end method

.method private setReverseStateInternal(ZI)V
    .locals 2

    .line 488
    invoke-virtual {p0}, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->isReverseSupported()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 491
    :cond_0
    sget-boolean v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 492
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setReverseStateInternal(): rtx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 493
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ReverseChargingControl"

    .line 492
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz p1, :cond_4

    .line 496
    invoke-virtual {p0}, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->isReverseOn()Z

    move-result v0

    if-nez v0, :cond_4

    .line 497
    invoke-direct {p0, p2}, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->logReverseStartEvent(I)V

    .line 498
    iget-boolean p2, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mPowerSave:Z

    if-eqz p2, :cond_2

    const/16 p1, 0x68

    .line 499
    invoke-direct {p0, p1}, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->logReverseStopEvent(I)V

    return-void

    .line 501
    :cond_2
    invoke-direct {p0}, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->isLowBattery()Z

    move-result p2

    if-eqz p2, :cond_3

    const/16 p1, 0x64

    .line 502
    invoke-direct {p0, p1}, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->logReverseStopEvent(I)V

    return-void

    .line 504
    :cond_3
    iget-boolean p2, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mIsUsbPlugIn:Z

    if-eqz p2, :cond_5

    const/16 p1, 0x6b

    .line 505
    invoke-direct {p0, p1}, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->logReverseStopEvent(I)V

    return-void

    .line 509
    :cond_4
    invoke-direct {p0, p2}, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->logReverseStopEvent(I)V

    .line 512
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->isReverseOn()Z

    move-result p2

    if-eq p1, p2, :cond_7

    if-eqz p1, :cond_6

    .line 513
    iget-boolean p2, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mDoesNfcConflictWithWlc:Z

    if-eqz p2, :cond_6

    iget-boolean p2, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mRestoreWlcNfcPollingMode:Z

    if-nez p2, :cond_6

    const/4 p2, 0x0

    .line 514
    invoke-direct {p0, p2}, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->enableNfcPollingMode(Z)V

    const/4 p2, 0x1

    .line 515
    iput-boolean p2, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mRestoreWlcNfcPollingMode:Z

    .line 518
    :cond_6
    iput-boolean p1, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mReverse:Z

    .line 519
    invoke-direct {p0, p1}, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->setRtxMode(Z)V

    :cond_7
    return-void
.end method

.method private setRtxMode(Z)V
    .locals 2

    .line 744
    iget-object v0, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mRtxChargerManagerOptional:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 745
    sget-boolean v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 746
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setRtxMode(): rtx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ReverseChargingControl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    :cond_0
    iget-object p0, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mRtxChargerManagerOptional:Ljava/util/Optional;

    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;->setRtxMode(Z)V

    :cond_1
    return-void
.end method

.method private setRtxTimer(IJ)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    if-eqz v1, :cond_4

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 793
    :cond_0
    iget-object v3, v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v4, 0x2

    .line 794
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    add-long v5, v1, p2

    iget-object v8, v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mAccessoryDeviceRemovedTimeoutAlarmAction:Landroid/app/AlarmManager$OnAlarmListener;

    const/4 v9, 0x0

    const-string v7, "ReverseChargingControl"

    .line 793
    invoke-virtual/range {v3 .. v9}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    goto :goto_0

    .line 788
    :cond_1
    iget-object v10, v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v11, 0x2

    .line 789
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    add-long v12, v1, p2

    iget-object v15, v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mReconnectedTimeoutAlarmAction:Landroid/app/AlarmManager$OnAlarmListener;

    const/16 v16, 0x0

    const-string v14, "ReverseChargingControl"

    .line 788
    invoke-virtual/range {v10 .. v16}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    goto :goto_0

    .line 783
    :cond_2
    iget-object v1, v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v2, 0x2

    .line 784
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    add-long v3, v3, p2

    iget-object v5, v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mCheckNfcConflictWithUsbAudioAlarmAction:Landroid/app/AlarmManager$OnAlarmListener;

    const/4 v6, 0x0

    const-string v7, "ReverseChargingControl"

    move-object v0, v1

    move v1, v2

    move-wide v2, v3

    move-object v4, v7

    .line 783
    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    goto :goto_0

    .line 778
    :cond_3
    iget-object v8, v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v9, 0x2

    .line 779
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    add-long v10, v1, p2

    iget-object v13, v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mRtxFinishRxFullAlarmAction:Landroid/app/AlarmManager$OnAlarmListener;

    const/4 v14, 0x0

    const-string v12, "ReverseChargingControl"

    .line 778
    invoke-virtual/range {v8 .. v14}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    goto :goto_0

    .line 773
    :cond_4
    iget-object v1, v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v2, 0x2

    .line 774
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    add-long v3, v3, p2

    iget-object v5, v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mRtxFinishAlarmAction:Landroid/app/AlarmManager$OnAlarmListener;

    const/4 v6, 0x0

    const-string v7, "ReverseChargingControl"

    move-object v0, v1

    move v1, v2

    move-wide v2, v3

    move-object v4, v7

    .line 773
    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public addCallback(Lcom/google/android/systemui/reversecharging/ReverseChargingController$ReverseChargingChangeCallback;)V
    .locals 2

    .line 943
    iget-object v0, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mChangeCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    .line 944
    :try_start_0
    iget-object v1, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 945
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 946
    iget-boolean v0, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mReverse:Z

    iget v1, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mRtxLevel:I

    iget-object p0, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mName:Ljava/lang/String;

    invoke-interface {p1, v0, v1, p0}, Lcom/google/android/systemui/reversecharging/ReverseChargingController$ReverseChargingChangeCallback;->onReverseChargingChanged(ZILjava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    .line 945
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public bridge synthetic addCallback(Ljava/lang/Object;)V
    .locals 0

    .line 97
    check-cast p1, Lcom/google/android/systemui/reversecharging/ReverseChargingController$ReverseChargingChangeCallback;

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->addCallback(Lcom/google/android/systemui/reversecharging/ReverseChargingController$ReverseChargingChangeCallback;)V

    return-void
.end method

.method public handleIntentForReverseCharging(Landroid/content/Intent;)V
    .locals 7

    .line 309
    invoke-virtual {p0}, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->isReverseSupported()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 312
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    .line 313
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v2, 0x64

    const-string v3, "ReverseChargingControl"

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_a

    .line 314
    iget-boolean v0, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mPluggedAc:Z

    const/high16 v1, 0x42c80000    # 100.0f

    const-string v6, "level"

    .line 316
    invoke-virtual {p1, v6, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v1

    const-string v1, "scale"

    .line 317
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v6, v1

    float-to-int v1, v6

    iput v1, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mLevel:I

    const-string v1, "plugged"

    .line 318
    invoke-virtual {p1, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v4, :cond_1

    move v1, v4

    goto :goto_0

    :cond_1
    move v1, v5

    .line 319
    :goto_0
    iput-boolean v1, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mPluggedAc:Z

    .line 320
    sget-boolean v1, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 321
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleIntentForReverseCharging(): rtx="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    iget-boolean v6, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mReverse:Z

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " wlc="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    iget-boolean v6, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mWirelessCharging:Z

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " plgac="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " ac="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mPluggedAc:Z

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " acrtx="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    iget-boolean v6, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mStopReverseAtAcUnplug:Z

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " extra="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " this="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 321
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    :cond_2
    iget-boolean p1, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mReverse:Z

    if-eqz p1, :cond_4

    iget-boolean v2, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mWirelessCharging:Z

    if-eqz v2, :cond_4

    if-eqz v1, :cond_3

    const-string p1, "handleIntentForReverseCharging(): wireless charging, stop"

    .line 330
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/16 p1, 0x66

    .line 332
    invoke-direct {p0, v5, p1}, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->setReverseStateInternal(ZI)V

    return-void

    :cond_4
    if-eqz p1, :cond_6

    if-eqz v0, :cond_6

    .line 335
    iget-boolean v2, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mPluggedAc:Z

    if-nez v2, :cond_6

    iget-boolean v2, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mStopReverseAtAcUnplug:Z

    if-eqz v2, :cond_6

    if-eqz v1, :cond_5

    const-string p1, "handleIntentForReverseCharging(): wired charging, stop"

    .line 337
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    :cond_5
    iput-boolean v5, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mStopReverseAtAcUnplug:Z

    const/16 p1, 0x6a

    .line 340
    invoke-direct {p0, v5, p1}, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->setReverseStateInternal(ZI)V

    return-void

    :cond_6
    if-nez p1, :cond_8

    if-nez v0, :cond_8

    .line 343
    iget-boolean v0, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mPluggedAc:Z

    if-eqz v0, :cond_8

    if-eqz v1, :cond_7

    const-string p1, "handleIntentForReverseCharging(): wired charging, start"

    .line 345
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    :cond_7
    iput-boolean v4, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mStopReverseAtAcUnplug:Z

    const/4 p1, 0x3

    .line 348
    invoke-direct {p0, v4, p1}, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->setReverseStateInternal(ZI)V

    return-void

    :cond_8
    if-eqz p1, :cond_17

    .line 351
    invoke-direct {p0}, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->isLowBattery()Z

    move-result p1

    if-eqz p1, :cond_17

    if-eqz v1, :cond_9

    const-string p1, "handleIntentForReverseCharging(): lower then battery threshold, stop"

    .line 353
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    const/4 p1, 0x4

    .line 356
    invoke-direct {p0, v5, p1}, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->setReverseStateInternal(ZI)V

    return-void

    :cond_a
    const-string v1, "android.os.action.POWER_SAVE_MODE_CHANGED"

    .line 359
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 360
    iget-boolean p1, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mReverse:Z

    if-eqz p1, :cond_17

    iget-boolean p1, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mPowerSave:Z

    if-eqz p1, :cond_17

    .line 361
    sget-boolean p1, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->DEBUG:Z

    if-eqz p1, :cond_b

    const-string p1, "handleIntentForReverseCharging(): power save, stop"

    .line 362
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    const/16 p1, 0x69

    .line 364
    invoke-direct {p0, v5, p1}, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->setReverseStateInternal(ZI)V

    return-void

    :cond_c
    const-string v1, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    .line 367
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v6, "device"

    if-eqz v1, :cond_15

    .line 368
    invoke-virtual {p1, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/hardware/usb/UsbDevice;

    if-nez p1, :cond_d

    const-string p1, "handleIntentForReverseCharging() UsbDevice is null!"

    .line 370
    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    iput-boolean v5, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mIsUsbPlugIn:Z

    return-void

    .line 375
    :cond_d
    iget-boolean v0, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mDoesNfcConflictWithUsbAudio:Z

    if-eqz v0, :cond_e

    .line 376
    invoke-direct {p0, v5, p1}, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->checkAndChangeNfcPollingAgainstUsbAudioDevice(ZLandroid/hardware/usb/UsbDevice;)V

    :cond_e
    move v0, v5

    .line 382
    :goto_1
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v1

    if-ge v0, v1, :cond_10

    .line 383
    invoke-virtual {p1, v0}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v1

    .line 384
    invoke-virtual {v1}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    move-result v1

    if-ne v1, v4, :cond_f

    move v0, v4

    goto :goto_2

    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_10
    move v0, v5

    :goto_2
    move v1, v5

    .line 390
    :goto_3
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getConfigurationCount()I

    move-result v6

    if-ge v1, v6, :cond_12

    .line 391
    invoke-virtual {p1, v1}, Landroid/hardware/usb/UsbDevice;->getConfiguration(I)Landroid/hardware/usb/UsbConfiguration;

    move-result-object v6

    .line 392
    invoke-virtual {v6}, Landroid/hardware/usb/UsbConfiguration;->getMaxPower()I

    move-result v6

    if-ge v6, v2, :cond_11

    move p1, v4

    goto :goto_4

    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_12
    move p1, v5

    :goto_4
    if-eqz v0, :cond_14

    if-nez p1, :cond_13

    goto :goto_5

    :cond_13
    move v4, v5

    .line 397
    :cond_14
    :goto_5
    iput-boolean v4, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mIsUsbPlugIn:Z

    .line 399
    iget-boolean p1, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mReverse:Z

    if-eqz p1, :cond_17

    if-eqz v4, :cond_17

    const/16 p1, 0x6c

    .line 400
    invoke-direct {p0, v5, p1}, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->setReverseStateInternal(ZI)V

    const-string p0, "handleIntentForReverseCharging(): stop reverse charging because USB-C plugin!"

    .line 401
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_15
    const-string v1, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    .line 405
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 406
    iget-boolean v0, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mDoesNfcConflictWithUsbAudio:Z

    if-eqz v0, :cond_16

    .line 407
    invoke-virtual {p1, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/hardware/usb/UsbDevice;

    if-eqz p1, :cond_16

    .line 409
    invoke-direct {p0, v4, p1}, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->checkAndChangeNfcPollingAgainstUsbAudioDevice(ZLandroid/hardware/usb/UsbDevice;)V

    .line 412
    :cond_16
    iput-boolean v5, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mIsUsbPlugIn:Z

    :cond_17
    :goto_6
    return-void
.end method

.method public init(Lcom/android/systemui/statusbar/policy/BatteryController;)V
    .locals 1

    .line 287
    iget-object v0, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mBatteryStateChangeCallback:Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 288
    iput-boolean p1, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mCacheIsReverseSupported:Z

    .line 289
    invoke-direct {p0}, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->resetReverseInfo()V

    .line 290
    invoke-direct {p0}, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->registerReceiver()V

    .line 291
    iget-object p1, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mBootCompleteCache:Lcom/android/systemui/BootCompleteCache;

    iget-object v0, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mBootCompleteListener:Lcom/android/systemui/BootCompleteCache$BootCompleteListener;

    invoke-interface {p1, v0}, Lcom/android/systemui/BootCompleteCache;->addListener(Lcom/android/systemui/BootCompleteCache$BootCompleteListener;)Z

    .line 292
    iget-object p1, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mRtxChargerManagerOptional:Ljava/util/Optional;

    invoke-virtual {p1}, Ljava/util/Optional;->isPresent()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 293
    iget-object p1, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mRtxChargerManagerOptional:Ljava/util/Optional;

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;

    new-instance v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController-$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/reversecharging/ReverseChargingController-$$ExternalSyntheticLambda6;-><init>(Lcom/google/android/systemui/reversecharging/ReverseChargingController;)V

    invoke-virtual {p1, v0}, Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;->addIsDockPresentChangeListener(Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger$IsDockPresentChangeListener;)V

    .line 295
    iget-object p1, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mRtxChargerManagerOptional:Ljava/util/Optional;

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;

    new-instance v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController-$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/reversecharging/ReverseChargingController-$$ExternalSyntheticLambda8;-><init>(Lcom/google/android/systemui/reversecharging/ReverseChargingController;)V

    invoke-virtual {p1, v0}, Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;->addReverseChargingInformationChangeListener(Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger$ReverseChargingInformationChangeListener;)V

    .line 297
    iget-object p1, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mRtxChargerManagerOptional:Ljava/util/Optional;

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;

    new-instance v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController-$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/reversecharging/ReverseChargingController-$$ExternalSyntheticLambda7;-><init>(Lcom/google/android/systemui/reversecharging/ReverseChargingController;)V

    invoke-virtual {p1, v0}, Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;->addReverseChargingChangeListener(Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger$ReverseChargingChangeListener;)V

    :cond_0
    return-void
.end method

.method public isReverseOn()Z
    .locals 0

    .line 444
    iget-boolean p0, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mReverse:Z

    return p0
.end method

.method public isReverseSupported()Z
    .locals 2

    .line 430
    iget-boolean v0, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mCacheIsReverseSupported:Z

    if-eqz v0, :cond_0

    .line 431
    iget-boolean p0, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mIsReverseSupported:Z

    return p0

    .line 432
    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mRtxChargerManagerOptional:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 433
    iget-object v0, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mRtxChargerManagerOptional:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;

    invoke-virtual {v0}, Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;->isRtxSupported()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mIsReverseSupported:Z

    const/4 v1, 0x1

    .line 434
    iput-boolean v1, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mCacheIsReverseSupported:Z

    return v0

    .line 437
    :cond_1
    sget-boolean p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->DEBUG:Z

    if-eqz p0, :cond_2

    const-string p0, "ReverseChargingControl"

    const-string v0, "isReverseSupported(): mRtxChargerManagerOptional is not present!"

    .line 438
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 304
    invoke-virtual {p0, p2}, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->handleIntentForReverseCharging(Landroid/content/Intent;)V

    return-void
.end method

.method onReverseStateChanged(Landroid/os/Bundle;)V
    .locals 3

    .line 629
    sget-boolean v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 630
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReverseStateChanged(): rtx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "key_rtx_mode"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 631
    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " bundle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " this="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ReverseChargingControl"

    .line 630
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    :cond_1
    iget-object v0, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mMainExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/systemui/reversecharging/ReverseChargingController-$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0, p1}, Lcom/google/android/systemui/reversecharging/ReverseChargingController-$$ExternalSyntheticLambda12;-><init>(Lcom/google/android/systemui/reversecharging/ReverseChargingController;Landroid/os/Bundle;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method playSound(Landroid/media/Ringtone;)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    .line 936
    invoke-virtual {p1, p0}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 937
    invoke-virtual {p1}, Landroid/media/Ringtone;->play()V

    :cond_0
    return-void
.end method

.method public removeCallback(Lcom/google/android/systemui/reversecharging/ReverseChargingController$ReverseChargingChangeCallback;)V
    .locals 1

    .line 951
    iget-object v0, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mChangeCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    .line 952
    :try_start_0
    iget-object p0, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 953
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public bridge synthetic removeCallback(Ljava/lang/Object;)V
    .locals 0

    .line 97
    check-cast p1, Lcom/google/android/systemui/reversecharging/ReverseChargingController$ReverseChargingChangeCallback;

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->removeCallback(Lcom/google/android/systemui/reversecharging/ReverseChargingController$ReverseChargingChangeCallback;)V

    return-void
.end method

.method public setReverseState(Z)V
    .locals 2

    .line 448
    invoke-virtual {p0}, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->isReverseSupported()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 451
    :cond_0
    sget-boolean v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 452
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setReverseState(): rtx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ReverseChargingControl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x0

    .line 454
    iput-boolean v0, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mStopReverseAtAcUnplug:Z

    const/4 v0, 0x2

    .line 455
    invoke-direct {p0, p1, v0}, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->setReverseStateInternal(ZI)V

    return-void
.end method
