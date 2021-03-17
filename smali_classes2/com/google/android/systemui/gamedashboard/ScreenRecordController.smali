.class public Lcom/google/android/systemui/gamedashboard/ScreenRecordController;
.super Ljava/lang/Object;
.source "ScreenRecordController.java"

# interfaces
.implements Lcom/android/systemui/screenrecord/RecordingController$RecordingStateChangeCallback;


# instance fields
.field private mAudioSource:Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

.field private mController:Lcom/android/systemui/screenrecord/RecordingController;

.field private mDelayMS:J

.field private mIntervalMS:J

.field private mShowTaps:Z

.field private mStartIntent:Landroid/app/PendingIntent;

.field private mStopIntent:Landroid/app/PendingIntent;

.field private mUserContextProvider:Lcom/android/systemui/settings/UserContextProvider;


# direct methods
.method public constructor <init>(Lcom/android/systemui/screenrecord/RecordingController;Lcom/android/systemui/settings/UserContextProvider;)V
    .locals 2

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0xbb8

    .line 39
    iput-wide v0, p0, Lcom/google/android/systemui/gamedashboard/ScreenRecordController;->mDelayMS:J

    const-wide/16 v0, 0x3e8

    .line 40
    iput-wide v0, p0, Lcom/google/android/systemui/gamedashboard/ScreenRecordController;->mIntervalMS:J

    const/4 v0, 0x1

    .line 50
    iput-boolean v0, p0, Lcom/google/android/systemui/gamedashboard/ScreenRecordController;->mShowTaps:Z

    .line 55
    iput-object p2, p0, Lcom/google/android/systemui/gamedashboard/ScreenRecordController;->mUserContextProvider:Lcom/android/systemui/settings/UserContextProvider;

    .line 56
    iput-object p1, p0, Lcom/google/android/systemui/gamedashboard/ScreenRecordController;->mController:Lcom/android/systemui/screenrecord/RecordingController;

    .line 57
    sget-object p1, Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;->INTERNAL:Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

    iput-object p1, p0, Lcom/google/android/systemui/gamedashboard/ScreenRecordController;->mAudioSource:Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

    return-void
.end method


# virtual methods
.method public handleClick()V
    .locals 4

    .line 64
    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ScreenRecordController;->mController:Lcom/android/systemui/screenrecord/RecordingController;

    invoke-virtual {v0}, Lcom/android/systemui/screenrecord/RecordingController;->isStarting()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ScreenRecordController;->mController:Lcom/android/systemui/screenrecord/RecordingController;

    invoke-virtual {v0}, Lcom/android/systemui/screenrecord/RecordingController;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    invoke-virtual {p0}, Lcom/google/android/systemui/gamedashboard/ScreenRecordController;->stopRecording()V

    goto :goto_0

    .line 69
    :cond_1
    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ScreenRecordController;->mUserContextProvider:Lcom/android/systemui/settings/UserContextProvider;

    invoke-interface {v0}, Lcom/android/systemui/settings/UserContextProvider;->getUserContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, -0x1

    .line 70
    iget-object v2, p0, Lcom/google/android/systemui/gamedashboard/ScreenRecordController;->mAudioSource:Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

    .line 74
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    iget-boolean v3, p0, Lcom/google/android/systemui/gamedashboard/ScreenRecordController;->mShowTaps:Z

    .line 72
    invoke-static {v0, v1, v2, v3}, Lcom/android/systemui/screenrecord/RecordingService;->getStartIntent(Landroid/content/Context;IIZ)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x2

    const/high16 v3, 0xc000000

    .line 70
    invoke-static {v0, v2, v1, v3}, Landroid/app/PendingIntent;->getForegroundService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/systemui/gamedashboard/ScreenRecordController;->mStartIntent:Landroid/app/PendingIntent;

    .line 78
    invoke-static {v0}, Lcom/android/systemui/screenrecord/RecordingService;->getStopIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    .line 76
    invoke-static {v0, v2, v1, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/systemui/gamedashboard/ScreenRecordController;->mStopIntent:Landroid/app/PendingIntent;

    .line 80
    invoke-virtual {p0}, Lcom/google/android/systemui/gamedashboard/ScreenRecordController;->startRecording()V

    :goto_0
    return-void
.end method

.method public startRecording()V
    .locals 7

    .line 88
    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ScreenRecordController;->mController:Lcom/android/systemui/screenrecord/RecordingController;

    iget-wide v1, p0, Lcom/google/android/systemui/gamedashboard/ScreenRecordController;->mDelayMS:J

    iget-wide v3, p0, Lcom/google/android/systemui/gamedashboard/ScreenRecordController;->mIntervalMS:J

    iget-object v5, p0, Lcom/google/android/systemui/gamedashboard/ScreenRecordController;->mStartIntent:Landroid/app/PendingIntent;

    iget-object v6, p0, Lcom/google/android/systemui/gamedashboard/ScreenRecordController;->mStopIntent:Landroid/app/PendingIntent;

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/screenrecord/RecordingController;->startCountdown(JJLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    return-void
.end method

.method public stopRecording()V
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/ScreenRecordController;->mController:Lcom/android/systemui/screenrecord/RecordingController;

    invoke-virtual {p0}, Lcom/android/systemui/screenrecord/RecordingController;->stopRecording()V

    return-void
.end method
