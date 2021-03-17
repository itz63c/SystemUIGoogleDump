.class public final Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "SensorUseStartedActivity.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity$Companion;

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private appOpsManager:Landroid/app/AppOpsManager;

.field private keyguardManager:Landroid/app/KeyguardManager;

.field private sensor:I

.field private sensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;

.field private sensorUsePackageName:Ljava/lang/String;

.field private unsuppressImmediately:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;->Companion:Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity$Companion;

    .line 46
    const-class v0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    const/4 v0, -0x1

    .line 51
    iput v0, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;->sensor:I

    return-void
.end method

.method public static final synthetic access$disableSensorPrivacy(Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;->disableSensorPrivacy()V

    return-void
.end method

.method public static final synthetic access$getLOG_TAG$cp()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getSensorPrivacyManager$p(Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;)Landroid/hardware/SensorPrivacyManager;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;->sensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    return-object p0
.end method

.method public static final synthetic access$getSensorUsePackageName$p(Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;->sensorUsePackageName:Ljava/lang/String;

    return-object p0
.end method

.method private final disableSensorPrivacy()V
    .locals 3

    .line 173
    iget-object v0, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;->sensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;->sensor:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorPrivacyManager;->setIndividualSensorPrivacyForProfileGroup(IZ)V

    const/4 v0, 0x1

    .line 174
    iput-boolean v0, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;->unsuppressImmediately:Z

    const/4 v0, -0x1

    .line 175
    invoke-virtual {p0, v0}, Lcom/android/internal/app/AlertActivity;->setResult(I)V

    return-void

    :cond_0
    const-string p0, "sensorPrivacyManager"

    .line 173
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 p1, -0x2

    if-eq p2, p1, :cond_4

    const/4 p1, -0x1

    if-eq p2, p1, :cond_0

    goto :goto_0

    .line 131
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;->keyguardManager:Landroid/app/KeyguardManager;

    const/4 p2, 0x0

    const-string v0, "keyguardManager"

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/app/KeyguardManager;->isDeviceLocked()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 132
    iget-object p1, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;->keyguardManager:Landroid/app/KeyguardManager;

    if-eqz p1, :cond_1

    .line 133
    new-instance p2, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity$onClick$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity$onClick$1;-><init>(Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;)V

    invoke-virtual {p1, p0, p2}, Landroid/app/KeyguardManager;->requestDismissKeyguard(Landroid/app/Activity;Landroid/app/KeyguardManager$KeyguardDismissCallback;)V

    goto :goto_0

    .line 132
    :cond_1
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw p2

    .line 143
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;->disableSensorPrivacy()V

    goto :goto_0

    .line 131
    :cond_3
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw p2

    :cond_4
    const/4 p1, 0x0

    .line 147
    iput-boolean p1, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;->unsuppressImmediately:Z

    .line 151
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->dismiss()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    .line 60
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 62
    invoke-virtual {p0, p1}, Lcom/android/internal/app/AlertActivity;->setShowWhenLocked(Z)V

    const/4 v0, 0x0

    .line 64
    invoke-virtual {p0, v0}, Lcom/android/internal/app/AlertActivity;->setFinishOnTouchOutside(Z)V

    .line 66
    invoke-virtual {p0, v0}, Lcom/android/internal/app/AlertActivity;->setResult(I)V

    .line 67
    const-class v1, Landroid/hardware/SensorPrivacyManager;

    invoke-virtual {p0, v1}, Lcom/android/internal/app/AlertActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorPrivacyManager;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;->sensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    .line 68
    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {p0, v1}, Lcom/android/internal/app/AlertActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;->appOpsManager:Landroid/app/AppOpsManager;

    .line 69
    const-class v1, Landroid/app/KeyguardManager;

    invoke-virtual {p0, v1}, Lcom/android/internal/app/AlertActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;->keyguardManager:Landroid/app/KeyguardManager;

    .line 71
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iput-object v1, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;->sensorUsePackageName:Ljava/lang/String;

    .line 72
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    sget-object v2, Landroid/hardware/SensorPrivacyManager;->EXTRA_SENSOR:Ljava/lang/String;

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 74
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    return-void

    .line 77
    :cond_1
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 72
    iput v1, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;->sensor:I

    .line 79
    iget-object v2, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;->sensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    const-string v3, "sensorPrivacyManager"

    const/4 v4, 0x0

    if-eqz v2, :cond_9

    new-instance v5, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity$onCreate$2;

    invoke-direct {v5, p0}, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity$onCreate$2;-><init>(Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;)V

    invoke-virtual {v2, v1, v5}, Landroid/hardware/SensorPrivacyManager;->addSensorPrivacyListener(ILandroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;)V

    .line 84
    iget-object v1, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;->sensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    if-eqz v1, :cond_8

    iget v2, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;->sensor:I

    invoke-virtual {v1, v2}, Landroid/hardware/SensorPrivacyManager;->isIndividualSensorPrivacyEnabled(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 85
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    return-void

    .line 89
    :cond_2
    iget-object v1, p0, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 91
    :try_start_0
    iget v2, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;->sensor:I

    const/4 v3, 0x2

    if-eq v2, p1, :cond_4

    if-eq v2, v3, :cond_3

    move v2, v0

    goto :goto_0

    .line 95
    :cond_3
    sget v2, Lcom/android/systemui/R$string;->sensor_privacy_start_use_camera_dialog_content:I

    goto :goto_0

    .line 93
    :cond_4
    sget v2, Lcom/android/systemui/R$string;->sensor_privacy_start_use_mic_dialog_content:I

    :goto_0
    new-array v5, p1, [Ljava/lang/Object;

    .line 97
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;->sensorUsePackageName:Ljava/lang/String;

    if-eqz v7, :cond_7

    invoke-virtual {v6, v7, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 98
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v5, v0

    .line 91
    invoke-virtual {p0, v2, v5}, Lcom/android/internal/app/AlertActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    iget v2, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;->sensor:I

    if-eq v2, p1, :cond_6

    if-eq v2, v3, :cond_5

    goto :goto_1

    :cond_5
    const v0, 0x1080663

    goto :goto_1

    :cond_6
    const v0, 0x1080668

    :goto_1
    iput v0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mIconId:I

    const p1, 0x1040772

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/app/AlertActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    const/high16 p1, 0x1040000

    .line 113
    invoke-virtual {p0, p1}, Lcom/android/internal/app/AlertActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 114
    iput-object p0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 115
    iput-object p0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 118
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->setupAlert()V

    return-void

    :cond_7
    :try_start_1
    const-string p1, "sensorUsePackageName"

    .line 97
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 100
    :catch_0
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    return-void

    .line 84
    :cond_8
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    .line 79
    :cond_9
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4
.end method

.method protected onStart()V
    .locals 3

    .line 122
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onStart()V

    .line 124
    iget-object v0, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;->sensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;->sensorUsePackageName:Ljava/lang/String;

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/hardware/SensorPrivacyManager;->suppressIndividualSensorPrivacyReminders(Ljava/lang/String;Z)V

    const/4 v0, 0x0

    .line 125
    iput-boolean v0, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;->unsuppressImmediately:Z

    return-void

    :cond_0
    const-string p0, "sensorUsePackageName"

    .line 124
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_1
    const-string p0, "sensorPrivacyManager"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method protected onStop()V
    .locals 4

    .line 155
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    .line 157
    iget-boolean v0, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;->unsuppressImmediately:Z

    if-eqz v0, :cond_2

    .line 158
    iget-object v0, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;->sensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 159
    iget-object p0, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;->sensorUsePackageName:Ljava/lang/String;

    if-eqz p0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/hardware/SensorPrivacyManager;->suppressIndividualSensorPrivacyReminders(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    const-string p0, "sensorUsePackageName"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_1
    const-string p0, "sensorPrivacyManager"

    .line 158
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 161
    :cond_2
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity$onStop$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity$onStop$1;-><init>(Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method
