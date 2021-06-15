.class public Lcom/google/android/systemui/ambientmusic/AmbientIndicationService;
.super Landroid/content/BroadcastReceiver;
.source "AmbientIndicationService.java"


# instance fields
.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private final mAmbientIndicationContainer:Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;

.field private final mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private final mContext:Landroid/content/Context;

.field private final mHideIndicationListener:Landroid/app/AlarmManager$OnAlarmListener;

.field private final mKeyguardIndicationController:Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;


# direct methods
.method public static synthetic $r8$lambda$_PISy3-NUfWLGTo7xoM-qjBWnTI(Lcom/google/android/systemui/ambientmusic/AmbientIndicationService;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/systemui/ambientmusic/AmbientIndicationService;->lambda$new$0()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;Landroid/app/AlarmManager;)V
    .locals 1

    .line 58
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 162
    new-instance v0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationService$1;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/ambientmusic/AmbientIndicationService$1;-><init>(Lcom/google/android/systemui/ambientmusic/AmbientIndicationService;)V

    iput-object v0, p0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationService;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 59
    iput-object p1, p0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationService;->mContext:Landroid/content/Context;

    .line 60
    iput-object p2, p0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationService;->mAmbientIndicationContainer:Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;

    .line 61
    iput-object p4, p0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 62
    iput-object p3, p0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationService;->mKeyguardIndicationController:Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;

    .line 64
    new-instance p1, Lcom/google/android/systemui/ambientmusic/AmbientIndicationService$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/ambientmusic/AmbientIndicationService$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/systemui/ambientmusic/AmbientIndicationService;)V

    iput-object p1, p0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationService;->mHideIndicationListener:Landroid/app/AlarmManager$OnAlarmListener;

    .line 69
    invoke-virtual {p0}, Lcom/google/android/systemui/ambientmusic/AmbientIndicationService;->start()V

    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationService;->mAmbientIndicationContainer:Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;

    invoke-virtual {v0}, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->hideAmbientMusic()V

    .line 66
    iget-object p0, p0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationService;->mKeyguardIndicationController:Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;

    invoke-virtual {p0}, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;->hideAmbientMusic()V

    return-void
.end method

.method private verifyAmbientApiVersion(Landroid/content/Intent;)Z
    .locals 3

    const-string p0, "com.google.android.ambientindication.extra.VERSION"

    const/4 v0, 0x0

    .line 135
    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    const/4 p1, 0x1

    if-eq p0, p1, :cond_0

    .line 138
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AmbientIndicationApi.EXTRA_VERSION is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", but received an intent with version "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", dropping intent."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AmbientIndication"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    return p1
.end method


# virtual methods
.method getCurrentUser()I
    .locals 0

    .line 153
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result p0

    return p0
.end method

.method isForCurrentUser()Z
    .locals 2

    .line 147
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->getSendingUserId()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/systemui/ambientmusic/AmbientIndicationService;->getCurrentUser()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 148
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->getSendingUserId()I

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13

    .line 87
    invoke-virtual {p0}, Lcom/google/android/systemui/ambientmusic/AmbientIndicationService;->isForCurrentUser()Z

    move-result p1

    const-string v0, "AmbientIndication"

    if-nez p1, :cond_0

    const-string p0, "Suppressing ambient, not for this user."

    .line 88
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 92
    :cond_0
    invoke-direct {p0, p2}, Lcom/google/android/systemui/ambientmusic/AmbientIndicationService;->verifyAmbientApiVersion(Landroid/content/Intent;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 96
    :cond_1
    iget-object p1, p0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationService;->mAmbientIndicationContainer:Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;

    invoke-virtual {p1}, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->isMediaPlaying()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "Suppressing ambient intent due to media playback."

    .line 97
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget-object p0, p0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationService;->mKeyguardIndicationController:Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;

    invoke-virtual {p0}, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;->hideAmbientMusic()V

    return-void

    .line 102
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v1, "com.google.android.ambientindication.action.AMBIENT_INDICATION_HIDE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "com.google.android.ambientindication.action.AMBIENT_INDICATION_SHOW"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const-string p1, "com.google.android.ambientindication.extra.TEXT"

    .line 104
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    const-string v1, "com.google.android.ambientindication.extra.OPEN_INTENT"

    .line 106
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    const-string v2, "com.google.android.ambientindication.extra.TTL_MILLIS"

    const-wide/32 v3, 0x2bf20

    .line 108
    invoke-virtual {p2, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    const-wide/16 v7, 0x0

    .line 110
    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    const-string v4, "com.google.android.ambientindication.extra.SKIP_UNLOCK"

    const/4 v5, 0x0

    .line 112
    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    const-string v6, "com.google.android.ambientindication.extra.ICON_OVERRIDE"

    .line 113
    invoke-virtual {p2, v6, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 115
    iget-object v5, p0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationService;->mKeyguardIndicationController:Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;

    invoke-virtual {v5, p1, v1, p2, v4}, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;->setAmbientMusic(Ljava/lang/CharSequence;Landroid/app/PendingIntent;IZ)V

    .line 117
    iget-object v5, p0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationService;->mAmbientIndicationContainer:Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;

    invoke-virtual {v5, p1, v1, p2, v4}, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->setAmbientMusic(Ljava/lang/CharSequence;Landroid/app/PendingIntent;IZ)V

    .line 119
    iget-object v6, p0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationService;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v7, 0x2

    .line 120
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    add-long v8, p1, v2

    iget-object v11, p0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationService;->mHideIndicationListener:Landroid/app/AlarmManager$OnAlarmListener;

    const/4 v12, 0x0

    const-string v10, "AmbientIndication"

    .line 119
    invoke-virtual/range {v6 .. v12}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    const-string p0, "Showing ambient indication."

    .line 122
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 125
    :cond_4
    iget-object p1, p0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationService;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object p2, p0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationService;->mHideIndicationListener:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {p1, p2}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 126
    iget-object p1, p0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationService;->mKeyguardIndicationController:Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;

    invoke-virtual {p1}, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;->hideAmbientMusic()V

    .line 127
    iget-object p0, p0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationService;->mAmbientIndicationContainer:Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;

    invoke-virtual {p0}, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->hideAmbientMusic()V

    const-string p0, "Hiding ambient indication."

    .line 128
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method onUserSwitched()V
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationService;->mAmbientIndicationContainer:Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;

    invoke-virtual {v0}, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->hideAmbientMusic()V

    .line 159
    iget-object p0, p0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationService;->mKeyguardIndicationController:Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;

    invoke-virtual {p0}, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;->hideAmbientMusic()V

    return-void
.end method

.method start()V
    .locals 6

    .line 74
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "com.google.android.ambientindication.action.AMBIENT_INDICATION_SHOW"

    .line 75
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.google.android.ambientindication.action.AMBIENT_INDICATION_HIDE"

    .line 76
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v4, "com.google.android.ambientindication.permission.AMBIENT_INDICATION"

    const/4 v5, 0x0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 81
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object p0, p0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationService;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method
