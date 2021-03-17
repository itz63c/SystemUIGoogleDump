.class public Lcom/android/systemui/keyguard/KeyguardSliceProvider;
.super Landroidx/slice/SliceProvider;
.source "KeyguardSliceProvider.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/NextAlarmController$NextAlarmChangeCallback;
.implements Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;
.implements Lcom/android/systemui/statusbar/NotificationMediaManager$MediaListener;
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;
.implements Lcom/android/systemui/SystemUIAppComponentFactory$ContextInitializer;


# static fields
.field static final ALARM_VISIBILITY_HOURS:I = 0xc
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final BOLD_STYLE:Landroid/text/style/StyleSpan;

.field private static sInstance:Lcom/android/systemui/keyguard/KeyguardSliceProvider;

.field private static final sInstanceLock:Ljava/lang/Object;


# instance fields
.field public mAlarmManager:Landroid/app/AlarmManager;

.field protected final mAlarmUri:Landroid/net/Uri;

.field public mContentResolver:Landroid/content/ContentResolver;

.field private mContextAvailableCallback:Lcom/android/systemui/SystemUIAppComponentFactory$ContextAvailableCallback;

.field private final mCurrentTime:Ljava/util/Date;

.field private mDateFormat:Landroid/icu/text/DateFormat;

.field private mDatePattern:Ljava/lang/String;

.field protected final mDateUri:Landroid/net/Uri;

.field protected final mDndUri:Landroid/net/Uri;

.field public mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

.field protected mDozing:Z

.field private final mHandler:Landroid/os/Handler;

.field protected final mHeaderUri:Landroid/net/Uri;

.field final mIntentReceiver:Landroid/content/BroadcastReceiver;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

.field final mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mLastText:Ljava/lang/String;

.field private mMediaArtist:Ljava/lang/CharSequence;

.field private final mMediaHandler:Landroid/os/Handler;

.field private mMediaIsVisible:Z

.field public mMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

.field private mMediaTitle:Ljava/lang/CharSequence;

.field protected final mMediaUri:Landroid/net/Uri;

.field protected mMediaWakeLock:Lcom/android/systemui/util/wakelock/SettableWakeLock;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mNextAlarm:Ljava/lang/String;

.field public mNextAlarmController:Lcom/android/systemui/statusbar/policy/NextAlarmController;

.field private mNextAlarmInfo:Landroid/app/AlarmManager$AlarmClockInfo;

.field private mPendingIntent:Landroid/app/PendingIntent;

.field private mRegistered:Z

.field protected final mSliceUri:Landroid/net/Uri;

.field private mStatusBarState:I

.field public mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field private final mUpdateNextAlarm:Landroid/app/AlarmManager$OnAlarmListener;

.field public mZenModeController:Lcom/android/systemui/statusbar/policy/ZenModeController;


# direct methods
.method public static synthetic $r8$lambda$LUa7NUO2bSgQxLI5RKHF8m-UWuo(Lcom/android/systemui/keyguard/KeyguardSliceProvider;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->updateNextAlarm()V

    return-void
.end method

.method public static synthetic $r8$lambda$f9ybxQY6o71GYAJ838lmm_S-j5U(Lcom/android/systemui/keyguard/KeyguardSliceProvider;Landroid/media/MediaMetadata;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->lambda$onPrimaryMetadataOrStateChanged$0(Landroid/media/MediaMetadata;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 90
    new-instance v0, Landroid/text/style/StyleSpan;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    sput-object v0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->BOLD_STYLE:Landroid/text/style/StyleSpan;

    .line 109
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->sInstanceLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 196
    invoke-direct {p0}, Landroidx/slice/SliceProvider;-><init>()V

    .line 118
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mCurrentTime:Ljava/util/Date;

    .line 121
    new-instance v0, Lcom/android/systemui/keyguard/KeyguardSliceProvider-$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/systemui/keyguard/KeyguardSliceProvider-$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/keyguard/KeyguardSliceProvider;)V

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mUpdateNextAlarm:Landroid/app/AlarmManager$OnAlarmListener;

    .line 157
    new-instance v0, Lcom/android/systemui/keyguard/KeyguardSliceProvider$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/keyguard/KeyguardSliceProvider$1;-><init>(Lcom/android/systemui/keyguard/KeyguardSliceProvider;)V

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 174
    new-instance v0, Lcom/android/systemui/keyguard/KeyguardSliceProvider$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/keyguard/KeyguardSliceProvider$2;-><init>(Lcom/android/systemui/keyguard/KeyguardSliceProvider;)V

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 197
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mHandler:Landroid/os/Handler;

    .line 198
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mMediaHandler:Landroid/os/Handler;

    const-string v0, "content://com.android.systemui.keyguard/main"

    .line 199
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mSliceUri:Landroid/net/Uri;

    const-string v0, "content://com.android.systemui.keyguard/header"

    .line 200
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mHeaderUri:Landroid/net/Uri;

    const-string v0, "content://com.android.systemui.keyguard/date"

    .line 201
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mDateUri:Landroid/net/Uri;

    const-string v0, "content://com.android.systemui.keyguard/alarm"

    .line 202
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mAlarmUri:Landroid/net/Uri;

    const-string v0, "content://com.android.systemui.keyguard/dnd"

    .line 203
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mDndUri:Landroid/net/Uri;

    const-string v0, "content://com.android.systemui.keyguard/media"

    .line 204
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mMediaUri:Landroid/net/Uri;

    return-void
.end method

.method public static getAttachedInstance()Lcom/android/systemui/keyguard/KeyguardSliceProvider;
    .locals 1

    .line 193
    sget-object v0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->sInstance:Lcom/android/systemui/keyguard/KeyguardSliceProvider;

    return-object v0
.end method

.method private getKeyguardUpdateMonitor()Lcom/android/keyguard/KeyguardUpdateMonitor;
    .locals 0

    .line 468
    const-class p0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-object p0
.end method

.method private synthetic lambda$onPrimaryMetadataOrStateChanged$0(Landroid/media/MediaMetadata;I)V
    .locals 0

    .line 487
    monitor-enter p0

    .line 488
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->updateMediaStateLocked(Landroid/media/MediaMetadata;I)V

    .line 489
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mMediaWakeLock:Lcom/android/systemui/util/wakelock/SettableWakeLock;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/android/systemui/util/wakelock/SettableWakeLock;->setAcquired(Z)V

    .line 490
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private updateMediaStateLocked(Landroid/media/MediaMetadata;I)V
    .locals 3

    .line 500
    invoke-static {p2}, Lcom/android/systemui/statusbar/NotificationMediaManager;->isPlayingState(I)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, "android.media.metadata.TITLE"

    .line 503
    invoke-virtual {p1, v1}, Landroid/media/MediaMetadata;->getText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 504
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 505
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$string;->music_controls_no_title:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :cond_1
    :goto_0
    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    const-string v0, "android.media.metadata.ARTIST"

    .line 508
    invoke-virtual {p1, v0}, Landroid/media/MediaMetadata;->getText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 511
    :goto_1
    iget-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mMediaIsVisible:Z

    if-ne p2, p1, :cond_3

    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mMediaTitle:Ljava/lang/CharSequence;

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mMediaArtist:Ljava/lang/CharSequence;

    .line 512
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    .line 515
    :cond_3
    iput-object v1, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mMediaTitle:Ljava/lang/CharSequence;

    .line 516
    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mMediaArtist:Ljava/lang/CharSequence;

    .line 517
    iput-boolean p2, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mMediaIsVisible:Z

    .line 518
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->notifyChange()V

    return-void
.end method

.method private updateNextAlarm()V
    .locals 3

    .line 377
    monitor-enter p0

    .line 378
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mNextAlarmInfo:Landroid/app/AlarmManager$AlarmClockInfo;

    const/16 v1, 0xc

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->withinNHoursLocked(Landroid/app/AlarmManager$AlarmClockInfo;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 379
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 380
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    .line 379
    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "HH:mm"

    goto :goto_0

    :cond_0
    const-string v0, "h:mm"

    .line 381
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mNextAlarmInfo:Landroid/app/AlarmManager$AlarmClockInfo;

    .line 382
    invoke-virtual {v1}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide v1

    .line 381
    invoke-static {v0, v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    .line 382
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mNextAlarm:Ljava/lang/String;

    goto :goto_1

    :cond_1
    const-string v0, ""

    .line 384
    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mNextAlarm:Ljava/lang/String;

    .line 386
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 387
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->notifyChange()V

    return-void

    :catchall_0
    move-exception v0

    .line 386
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private withinNHoursLocked(Landroid/app/AlarmManager$AlarmClockInfo;I)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 395
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-object p1, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    int-to-long v3, p2

    invoke-virtual {p1, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    add-long/2addr v1, p1

    .line 396
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mNextAlarmInfo:Landroid/app/AlarmManager$AlarmClockInfo;

    invoke-virtual {p0}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide p0

    cmp-long p0, p0, v1

    if-gtz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method


# virtual methods
.method protected addMediaLocked(Landroidx/slice/builders/ListBuilder;)V
    .locals 3

    .line 239
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mMediaTitle:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 242
    :cond_0
    new-instance v0, Landroidx/slice/builders/ListBuilder$HeaderBuilder;

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mHeaderUri:Landroid/net/Uri;

    invoke-direct {v0, v1}, Landroidx/slice/builders/ListBuilder$HeaderBuilder;-><init>(Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mMediaTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroidx/slice/builders/ListBuilder$HeaderBuilder;->setTitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$HeaderBuilder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/slice/builders/ListBuilder;->setHeader(Landroidx/slice/builders/ListBuilder$HeaderBuilder;)Landroidx/slice/builders/ListBuilder;

    .line 244
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mMediaArtist:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 245
    new-instance v0, Landroidx/slice/builders/ListBuilder$RowBuilder;

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mMediaUri:Landroid/net/Uri;

    invoke-direct {v0, v1}, Landroidx/slice/builders/ListBuilder$RowBuilder;-><init>(Landroid/net/Uri;)V

    .line 246
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mMediaArtist:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    .line 248
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    move-object v1, v2

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationMediaManager;->getMediaIcon()Landroid/graphics/drawable/Icon;

    move-result-object v1

    :goto_0
    if-nez v1, :cond_2

    goto :goto_1

    .line 250
    :cond_2
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v1}, Landroidx/core/graphics/drawable/IconCompat;->createFromIcon(Landroid/content/Context;Landroid/graphics/drawable/Icon;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v2

    :goto_1
    if-eqz v2, :cond_3

    const/4 p0, 0x0

    .line 252
    invoke-virtual {v0, v2, p0}, Landroidx/slice/builders/ListBuilder$RowBuilder;->addEndItem(Landroidx/core/graphics/drawable/IconCompat;I)Landroidx/slice/builders/ListBuilder$RowBuilder;

    .line 255
    :cond_3
    invoke-virtual {p1, v0}, Landroidx/slice/builders/ListBuilder;->addRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)Landroidx/slice/builders/ListBuilder;

    :cond_4
    return-void
.end method

.method protected addNextAlarmLocked(Landroidx/slice/builders/ListBuilder;)V
    .locals 3

    .line 272
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mNextAlarm:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 275
    :cond_0
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$drawable;->ic_access_alarms_big:I

    invoke-static {v0, v1}, Landroidx/core/graphics/drawable/IconCompat;->createWithResource(Landroid/content/Context;I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v0

    .line 277
    new-instance v1, Landroidx/slice/builders/ListBuilder$RowBuilder;

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mAlarmUri:Landroid/net/Uri;

    invoke-direct {v1, v2}, Landroidx/slice/builders/ListBuilder$RowBuilder;-><init>(Landroid/net/Uri;)V

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mNextAlarm:Ljava/lang/String;

    .line 278
    invoke-virtual {v1, p0}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object p0

    const/4 v1, 0x0

    .line 279
    invoke-virtual {p0, v0, v1}, Landroidx/slice/builders/ListBuilder$RowBuilder;->addEndItem(Landroidx/core/graphics/drawable/IconCompat;I)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object p0

    .line 280
    invoke-virtual {p1, p0}, Landroidx/slice/builders/ListBuilder;->addRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)Landroidx/slice/builders/ListBuilder;

    return-void
.end method

.method protected addPrimaryActionLocked(Landroidx/slice/builders/ListBuilder;)V
    .locals 3

    .line 262
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$drawable;->ic_access_alarms_big:I

    invoke-static {v0, v1}, Landroidx/core/graphics/drawable/IconCompat;->createWithResource(Landroid/content/Context;I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v0

    .line 264
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mPendingIntent:Landroid/app/PendingIntent;

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mLastText:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2, p0}, Landroidx/slice/builders/SliceAction;->createDeeplink(Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;ILjava/lang/CharSequence;)Landroidx/slice/builders/SliceAction;

    move-result-object p0

    .line 266
    new-instance v0, Landroidx/slice/builders/ListBuilder$RowBuilder;

    const-string v1, "content://com.android.systemui.keyguard/action"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/slice/builders/ListBuilder$RowBuilder;-><init>(Landroid/net/Uri;)V

    .line 267
    invoke-virtual {v0, p0}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setPrimaryAction(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object p0

    .line 268
    invoke-virtual {p1, p0}, Landroidx/slice/builders/ListBuilder;->addRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)Landroidx/slice/builders/ListBuilder;

    return-void
.end method

.method protected addZenModeLocked(Landroidx/slice/builders/ListBuilder;)V
    .locals 3

    .line 288
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->isDndOn()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 291
    :cond_0
    new-instance v0, Landroidx/slice/builders/ListBuilder$RowBuilder;

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mDndUri:Landroid/net/Uri;

    invoke-direct {v0, v1}, Landroidx/slice/builders/ListBuilder$RowBuilder;-><init>(Landroid/net/Uri;)V

    .line 292
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$string;->accessibility_quick_settings_dnd:I

    .line 293
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 292
    invoke-virtual {v0, v1}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setContentDescription(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v0

    .line 295
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v1, Lcom/android/systemui/R$drawable;->stat_sys_dnd:I

    invoke-static {p0, v1}, Landroidx/core/graphics/drawable/IconCompat;->createWithResource(Landroid/content/Context;I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object p0

    const/4 v1, 0x0

    .line 294
    invoke-virtual {v0, p0, v1}, Landroidx/slice/builders/ListBuilder$RowBuilder;->addEndItem(Landroidx/core/graphics/drawable/IconCompat;I)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object p0

    .line 297
    invoke-virtual {p1, p0}, Landroidx/slice/builders/ListBuilder;->addRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)Landroidx/slice/builders/ListBuilder;

    return-void
.end method

.method cleanDateFormatLocked()V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    .line 448
    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mDateFormat:Landroid/icu/text/DateFormat;

    return-void
.end method

.method protected getFormattedDateLocked()Ljava/lang/String;
    .locals 3

    .line 436
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mDateFormat:Landroid/icu/text/DateFormat;

    if-nez v0, :cond_0

    .line 437
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 438
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mDatePattern:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/icu/text/DateFormat;->getInstanceForSkeleton(Ljava/lang/String;Ljava/util/Locale;)Landroid/icu/text/DateFormat;

    move-result-object v0

    .line 439
    sget-object v1, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_STANDALONE:Landroid/icu/text/DisplayContext;

    invoke-virtual {v0, v1}, Landroid/icu/text/DateFormat;->setContext(Landroid/icu/text/DisplayContext;)V

    .line 440
    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mDateFormat:Landroid/icu/text/DateFormat;

    .line 442
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mCurrentTime:Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Date;->setTime(J)V

    .line 443
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mDateFormat:Landroid/icu/text/DateFormat;

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mCurrentTime:Ljava/util/Date;

    invoke-virtual {v0, p0}, Landroid/icu/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected isDndOn()Z
    .locals 0

    .line 304
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mZenModeController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/policy/ZenModeController;->getZen()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method isRegistered()Z
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 422
    monitor-enter p0

    .line 423
    :try_start_0
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mRegistered:Z

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    .line 424
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected needsMediaLocked()Z
    .locals 5

    .line 229
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 230
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getAlwaysOn()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 233
    :goto_0
    iget v3, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mStatusBarState:I

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mMediaIsVisible:Z

    if-eqz v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    .line 234
    :goto_1
    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mMediaTitle:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-boolean v4, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mMediaIsVisible:Z

    if-eqz v4, :cond_2

    iget-boolean p0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mDozing:Z

    if-nez p0, :cond_3

    if-nez v0, :cond_3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :cond_3
    :goto_2
    return v1
.end method

.method protected notifyChange()V
    .locals 2

    .line 522
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mContentResolver:Landroid/content/ContentResolver;

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mSliceUri:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onBindSlice(Landroid/net/Uri;)Landroidx/slice/Slice;
    .locals 4

    const-string p1, "KeyguardSliceProvider#onBindSlice"

    .line 210
    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 212
    monitor-enter p0

    .line 213
    :try_start_0
    new-instance p1, Landroidx/slice/builders/ListBuilder;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mSliceUri:Landroid/net/Uri;

    const-wide/16 v2, -0x1

    invoke-direct {p1, v0, v1, v2, v3}, Landroidx/slice/builders/ListBuilder;-><init>(Landroid/content/Context;Landroid/net/Uri;J)V

    .line 214
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->needsMediaLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->addMediaLocked(Landroidx/slice/builders/ListBuilder;)V

    goto :goto_0

    .line 217
    :cond_0
    new-instance v0, Landroidx/slice/builders/ListBuilder$RowBuilder;

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mDateUri:Landroid/net/Uri;

    invoke-direct {v0, v1}, Landroidx/slice/builders/ListBuilder$RowBuilder;-><init>(Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mLastText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/slice/builders/ListBuilder;->addRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)Landroidx/slice/builders/ListBuilder;

    .line 219
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->addNextAlarmLocked(Landroidx/slice/builders/ListBuilder;)V

    .line 220
    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->addZenModeLocked(Landroidx/slice/builders/ListBuilder;)V

    .line 221
    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->addPrimaryActionLocked(Landroidx/slice/builders/ListBuilder;)V

    .line 222
    invoke-virtual {p1}, Landroidx/slice/builders/ListBuilder;->build()Landroidx/slice/Slice;

    move-result-object p1

    .line 223
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 223
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onConfigChanged(Landroid/service/notification/ZenModeConfig;)V
    .locals 0

    .line 373
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->notifyChange()V

    return-void
.end method

.method public onCreateSliceProvider()Z
    .locals 9

    .line 309
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mContextAvailableCallback:Lcom/android/systemui/SystemUIAppComponentFactory$ContextAvailableCallback;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/systemui/SystemUIAppComponentFactory$ContextAvailableCallback;->onContextAvailable(Landroid/content/Context;)V

    .line 310
    new-instance v0, Lcom/android/systemui/util/wakelock/SettableWakeLock;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "media"

    invoke-static {v1, v2}, Lcom/android/systemui/util/wakelock/WakeLock;->createPartial(Landroid/content/Context;Ljava/lang/String;)Lcom/android/systemui/util/wakelock/WakeLock;

    move-result-object v1

    const-string v2, "media"

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/util/wakelock/SettableWakeLock;-><init>(Lcom/android/systemui/util/wakelock/WakeLock;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mMediaWakeLock:Lcom/android/systemui/util/wakelock/SettableWakeLock;

    .line 312
    sget-object v0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->sInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 313
    :try_start_0
    sget-object v1, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->sInstance:Lcom/android/systemui/keyguard/KeyguardSliceProvider;

    if-eqz v1, :cond_0

    .line 315
    invoke-virtual {v1}, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->onDestroy()V

    .line 317
    :cond_0
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$string;->system_ui_aod_date_pattern:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mDatePattern:Ljava/lang/String;

    .line 318
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    .line 319
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/android/systemui/keyguard/KeyguardSliceProvider;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v3, 0x4000000

    const/4 v4, 0x0

    .line 318
    invoke-static {v1, v4, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mPendingIntent:Landroid/app/PendingIntent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    .line 323
    :try_start_1
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

    invoke-virtual {v2, p0}, Lcom/android/systemui/statusbar/NotificationMediaManager;->addCallback(Lcom/android/systemui/statusbar/NotificationMediaManager$MediaListener;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 340
    :try_start_2
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v2, p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 341
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mNextAlarmController:Lcom/android/systemui/statusbar/policy/NextAlarmController;

    invoke-interface {v2, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 342
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mZenModeController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    invoke-interface {v2, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 343
    sput-object p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->sInstance:Lcom/android/systemui/keyguard/KeyguardSliceProvider;

    .line 344
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->registerClockUpdate()V

    .line 345
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->updateClockLocked()V

    .line 346
    monitor-exit v0

    return v1

    :catch_0
    move-exception v2

    const-string v3, "KgdSliceProvider"

    const-string v5, "Failed to setup mMediaManager. Trying again."

    .line 326
    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    invoke-static {}, Lcom/android/systemui/SystemUIFactory;->getInstance()Lcom/android/systemui/SystemUIFactory;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/SystemUIFactory;->getSysUIComponent()Lcom/android/systemui/dagger/SysUIComponent;

    move-result-object v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 329
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "inject"

    new-array v7, v1, [Ljava/lang/Class;

    .line 330
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v4

    .line 331
    invoke-virtual {v5, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "KgdSliceProvider"

    .line 332
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mMediaManager is now: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_1
    move-exception p0

    :try_start_4
    const-string v1, "KgdSliceProvider"

    const-string v3, "Failed to call inject"

    .line 336
    invoke-static {v1, v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_2
    move-exception p0

    const-string v1, "KgdSliceProvider"

    const-string v3, "Failed to find inject method for KeyguardSliceProvider"

    .line 334
    invoke-static {v1, v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 338
    :goto_0
    throw v2

    :catchall_0
    move-exception p0

    .line 346
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method

.method protected onDestroy()V
    .locals 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 352
    sget-object v0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->sInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 353
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mNextAlarmController:Lcom/android/systemui/statusbar/policy/NextAlarmController;

    invoke-interface {v1, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    .line 354
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mZenModeController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    invoke-interface {v1, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    .line 355
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mMediaWakeLock:Lcom/android/systemui/util/wakelock/SettableWakeLock;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/util/wakelock/SettableWakeLock;->setAcquired(Z)V

    .line 356
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mUpdateNextAlarm:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {v1, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 357
    iget-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mRegistered:Z

    if-eqz v1, :cond_0

    .line 358
    iput-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mRegistered:Z

    .line 359
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->getKeyguardUpdateMonitor()Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 360
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    const/4 p0, 0x0

    .line 362
    sput-object p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->sInstance:Lcom/android/systemui/keyguard/KeyguardSliceProvider;

    .line 363
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onDozingChanged(Z)V
    .locals 1

    .line 528
    monitor-enter p0

    .line 529
    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->needsMediaLocked()Z

    move-result v0

    .line 530
    iput-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mDozing:Z

    .line 531
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->needsMediaLocked()Z

    move-result p1

    if-eq v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 532
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    .line 534
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->notifyChange()V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 532
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onNextAlarmChanged(Landroid/app/AlarmManager$AlarmClockInfo;)V
    .locals 9

    .line 453
    monitor-enter p0

    .line 454
    :try_start_0
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mNextAlarmInfo:Landroid/app/AlarmManager$AlarmClockInfo;

    .line 455
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mUpdateNextAlarm:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {p1, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 457
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mNextAlarmInfo:Landroid/app/AlarmManager$AlarmClockInfo;

    if-nez p1, :cond_0

    const-wide/16 v0, -0x1

    :goto_0
    move-wide v4, v0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide v0

    sget-object p1, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xc

    .line 458
    invoke-virtual {p1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    sub-long/2addr v0, v2

    goto :goto_0

    :goto_1
    const-wide/16 v0, 0x0

    cmp-long p1, v4, v0

    if-lez p1, :cond_1

    .line 460
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v3, 0x1

    const-string v6, "lock_screen_next_alarm"

    iget-object v7, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mUpdateNextAlarm:Landroid/app/AlarmManager$OnAlarmListener;

    iget-object v8, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual/range {v2 .. v8}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 463
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 464
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->updateNextAlarm()V

    return-void

    :catchall_0
    move-exception p1

    .line 463
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onPrimaryMetadataOrStateChanged(Landroid/media/MediaMetadata;I)V
    .locals 3

    .line 478
    monitor-enter p0

    .line 479
    :try_start_0
    invoke-static {p2}, Lcom/android/systemui/statusbar/NotificationMediaManager;->isPlayingState(I)Z

    move-result v0

    .line 480
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mMediaHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 481
    iget-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mMediaIsVisible:Z

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mStatusBarState:I

    if-eqz v0, :cond_0

    .line 485
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mMediaWakeLock:Lcom/android/systemui/util/wakelock/SettableWakeLock;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/wakelock/SettableWakeLock;->setAcquired(Z)V

    .line 486
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mMediaHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/keyguard/KeyguardSliceProvider-$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/keyguard/KeyguardSliceProvider-$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/keyguard/KeyguardSliceProvider;Landroid/media/MediaMetadata;I)V

    const-wide/16 p1, 0x7d0

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 493
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mMediaWakeLock:Lcom/android/systemui/util/wakelock/SettableWakeLock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/wakelock/SettableWakeLock;->setAcquired(Z)V

    .line 494
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->updateMediaStateLocked(Landroid/media/MediaMetadata;I)V

    .line 496
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onStateChanged(I)V
    .locals 1

    .line 541
    monitor-enter p0

    .line 542
    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->needsMediaLocked()Z

    move-result v0

    .line 543
    iput p1, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mStatusBarState:I

    .line 544
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->needsMediaLocked()Z

    move-result p1

    if-eq v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 545
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    .line 547
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->notifyChange()V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 545
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onZenChanged(I)V
    .locals 0

    .line 368
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->notifyChange()V

    return-void
.end method

.method protected registerClockUpdate()V
    .locals 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 405
    monitor-enter p0

    .line 406
    :try_start_0
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mRegistered:Z

    if-eqz v0, :cond_0

    .line 407
    monitor-exit p0

    return-void

    .line 410
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.DATE_CHANGED"

    .line 411
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.LOCALE_CHANGED"

    .line 412
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 413
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 415
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->getKeyguardUpdateMonitor()Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    const/4 v0, 0x1

    .line 416
    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mRegistered:Z

    .line 417
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setContextAvailableCallback(Lcom/android/systemui/SystemUIAppComponentFactory$ContextAvailableCallback;)V
    .locals 0

    .line 554
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mContextAvailableCallback:Lcom/android/systemui/SystemUIAppComponentFactory$ContextAvailableCallback;

    return-void
.end method

.method protected updateClockLocked()V
    .locals 2

    .line 428
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->getFormattedDateLocked()Ljava/lang/String;

    move-result-object v0

    .line 429
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mLastText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 430
    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mLastText:Ljava/lang/String;

    .line 431
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->notifyChange()V

    :cond_0
    return-void
.end method
