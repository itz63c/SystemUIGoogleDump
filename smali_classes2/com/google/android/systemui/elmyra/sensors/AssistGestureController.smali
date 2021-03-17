.class Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;
.super Ljava/lang/Object;
.source "AssistGestureController.java"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/systemui/elmyra/sensors/AssistGestureController$OPAQueryReceiver;
    }
.end annotation


# instance fields
.field private mChassis:Lcom/google/android/systemui/elmyra/proto/nano/ChassisProtos$Chassis;

.field private mCompleteGestures:Lcom/google/android/systemui/elmyra/SnapshotLogger;

.field private final mFalsePrimeWindow:J

.field private final mGestureConfiguration:Lcom/google/android/systemui/elmyra/sensors/config/GestureConfiguration;

.field private final mGestureCooldownTime:J

.field private mGestureListener:Lcom/google/android/systemui/elmyra/sensors/GestureSensor$Listener;

.field private mGestureProgress:F

.field private final mGestureSensor:Lcom/google/android/systemui/elmyra/sensors/GestureSensor;

.field private mIncompleteGestures:Lcom/google/android/systemui/elmyra/SnapshotLogger;

.field private mIsFalsePrimed:Z

.field private mLastDetectionTime:J

.field private mOpaQueryReceiver:Lcom/google/android/systemui/elmyra/sensors/AssistGestureController$OPAQueryReceiver;

.field private final mProgressAlpha:F

.field private final mProgressReportThreshold:F

.field private final mSnapshotController:Lcom/google/android/systemui/elmyra/SnapshotController;

.field private mWestworldLogger:Lcom/google/android/systemui/elmyra/WestworldLogger;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/systemui/elmyra/sensors/GestureSensor;Lcom/google/android/systemui/elmyra/sensors/config/GestureConfiguration;)V
    .locals 1

    const/4 v0, 0x0

    .line 89
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;-><init>(Landroid/content/Context;Lcom/google/android/systemui/elmyra/sensors/GestureSensor;Lcom/google/android/systemui/elmyra/sensors/config/GestureConfiguration;Lcom/google/android/systemui/elmyra/SnapshotConfiguration;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/android/systemui/elmyra/sensors/GestureSensor;Lcom/google/android/systemui/elmyra/sensors/config/GestureConfiguration;Lcom/google/android/systemui/elmyra/SnapshotConfiguration;)V
    .locals 6

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    new-instance v0, Lcom/google/android/systemui/elmyra/sensors/AssistGestureController$OPAQueryReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/systemui/elmyra/sensors/AssistGestureController$OPAQueryReceiver;-><init>(Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;Lcom/google/android/systemui/elmyra/sensors/AssistGestureController$1;)V

    iput-object v0, p0, Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;->mOpaQueryReceiver:Lcom/google/android/systemui/elmyra/sensors/AssistGestureController$OPAQueryReceiver;

    .line 97
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "com.google.android.systemui.OPA_ELMYRA_QUERY_SUBMITTED"

    .line 98
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 100
    iget-object v2, p0, Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;->mOpaQueryReceiver:Lcom/google/android/systemui/elmyra/sensors/AssistGestureController$OPAQueryReceiver;

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 101
    iput-object p2, p0, Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;->mGestureSensor:Lcom/google/android/systemui/elmyra/sensors/GestureSensor;

    .line 103
    iput-object p3, p0, Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;->mGestureConfiguration:Lcom/google/android/systemui/elmyra/sensors/config/GestureConfiguration;

    .line 105
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 106
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 108
    new-instance v2, Lcom/google/android/systemui/elmyra/SnapshotLogger;

    const/4 v3, 0x0

    if-eqz p4, :cond_0

    .line 109
    invoke-virtual {p4}, Lcom/google/android/systemui/elmyra/SnapshotConfiguration;->getCompleteGestures()I

    move-result v4

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    invoke-direct {v2, v4}, Lcom/google/android/systemui/elmyra/SnapshotLogger;-><init>(I)V

    iput-object v2, p0, Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;->mCompleteGestures:Lcom/google/android/systemui/elmyra/SnapshotLogger;

    .line 110
    new-instance v2, Lcom/google/android/systemui/elmyra/SnapshotLogger;

    if-eqz p4, :cond_1

    .line 111
    invoke-virtual {p4}, Lcom/google/android/systemui/elmyra/SnapshotConfiguration;->getIncompleteGestures()I

    move-result v3

    :cond_1
    invoke-direct {v2, v3}, Lcom/google/android/systemui/elmyra/SnapshotLogger;-><init>(I)V

    iput-object v2, p0, Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;->mIncompleteGestures:Lcom/google/android/systemui/elmyra/SnapshotLogger;

    .line 113
    sget v2, Lcom/android/systemui/R$dimen;->elmyra_progress_alpha:I

    const/4 v3, 0x1

    invoke-virtual {p2, v2, v0, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 114
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v2

    iput v2, p0, Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;->mProgressAlpha:F

    .line 115
    sget v2, Lcom/android/systemui/R$dimen;->elmyra_progress_report_threshold:I

    invoke-virtual {p2, v2, v0, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 116
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v0

    iput v0, p0, Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;->mProgressReportThreshold:F

    .line 117
    sget v0, Lcom/android/systemui/R$integer;->elmyra_gesture_cooldown_time:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v2, v0

    iput-wide v2, p0, Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;->mGestureCooldownTime:J

    .line 118
    sget v0, Lcom/android/systemui/R$integer;->elmyra_false_prime_window:I

    .line 119
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    int-to-long v4, p2

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;->mFalsePrimeWindow:J

    if-eqz p4, :cond_2

    .line 121
    new-instance p2, Lcom/google/android/systemui/elmyra/SnapshotController;

    invoke-direct {p2, p4}, Lcom/google/android/systemui/elmyra/SnapshotController;-><init>(Lcom/google/android/systemui/elmyra/SnapshotConfiguration;)V

    iput-object p2, p0, Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;->mSnapshotController:Lcom/google/android/systemui/elmyra/SnapshotController;

    goto :goto_1

    .line 124
    :cond_2
    iput-object v1, p0, Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;->mSnapshotController:Lcom/google/android/systemui/elmyra/SnapshotController;

    .line 126
    :goto_1
    new-instance p2, Lcom/google/android/systemui/elmyra/WestworldLogger;

    iget-object p4, p0, Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;->mSnapshotController:Lcom/google/android/systemui/elmyra/SnapshotController;

    invoke-direct {p2, p1, p3, p4}, Lcom/google/android/systemui/elmyra/WestworldLogger;-><init>(Landroid/content/Context;Lcom/google/android/systemui/elmyra/sensors/config/GestureConfiguration;Lcom/google/android/systemui/elmyra/SnapshotController;)V

    iput-object p2, p0, Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;->mWestworldLogger:Lcom/google/android/systemui/elmyra/WestworldLogger;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;)Lcom/google/android/systemui/elmyra/SnapshotLogger;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;->mCompleteGestures:Lcom/google/android/systemui/elmyra/SnapshotLogger;

    return-object p0
.end method

.method static synthetic access$100(Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;)Lcom/google/android/systemui/elmyra/WestworldLogger;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;->mWestworldLogger:Lcom/google/android/systemui/elmyra/WestworldLogger;

    return-object p0
.end method

.method private dumpProto(Ljava/io/FileDescriptor;)V
    .locals 7

    .line 275
    iget-object v0, p0, Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;->mIncompleteGestures:Lcom/google/android/systemui/elmyra/SnapshotLogger;

    invoke-virtual {v0}, Lcom/google/android/systemui/elmyra/SnapshotLogger;->getSnapshots()Ljava/util/List;

    move-result-object v0

    .line 276
    iget-object v1, p0, Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;->mCompleteGestures:Lcom/google/android/systemui/elmyra/SnapshotLogger;

    invoke-virtual {v1}, Lcom/google/android/systemui/elmyra/SnapshotLogger;->getSnapshots()Ljava/util/List;

    move-result-object v1

    .line 277
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v2, v3

    if-nez v2, :cond_0

    return-void

    .line 281
    :cond_0
    new-instance v2, Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Snapshots;

    invoke-direct {v2}, Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Snapshots;-><init>()V

    .line 282
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v3, v4

    new-array v3, v3, [Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Snapshot;

    iput-object v3, v2, Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Snapshots;->snapshots:[Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Snapshot;

    const/4 v3, 0x0

    move v4, v3

    .line 285
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 286
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/systemui/elmyra/SnapshotLogger$Snapshot;

    invoke-virtual {v5}, Lcom/google/android/systemui/elmyra/SnapshotLogger$Snapshot;->getSnapshot()Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Snapshot;

    move-result-object v5

    .line 287
    iget-object v6, v2, Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Snapshots;->snapshots:[Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Snapshot;

    aput-object v5, v6, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 291
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_2

    .line 292
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/systemui/elmyra/SnapshotLogger$Snapshot;

    invoke-virtual {v0}, Lcom/google/android/systemui/elmyra/SnapshotLogger$Snapshot;->getSnapshot()Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Snapshot;

    move-result-object v0

    .line 293
    iget-object v5, v2, Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Snapshots;->snapshots:[Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Snapshot;

    add-int v6, v4, v3

    aput-object v0, v5, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 295
    :cond_2
    invoke-static {v2}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v0

    .line 296
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 297
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 299
    :try_start_0
    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 300
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 304
    :goto_2
    iget-object p1, p0, Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;->mCompleteGestures:Lcom/google/android/systemui/elmyra/SnapshotLogger;

    invoke-virtual {p1}, Lcom/google/android/systemui/elmyra/SnapshotLogger;->getSnapshots()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 305
    iget-object p0, p0, Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;->mIncompleteGestures:Lcom/google/android/systemui/elmyra/SnapshotLogger;

    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/SnapshotLogger;->getSnapshots()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 306
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_0
    :try_start_1
    const-string p1, "Elmyra/AssistGestureController"

    const-string v0, "Error writing to output stream"

    .line 302
    invoke-static {p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_3
    return-void

    .line 304
    :goto_4
    iget-object v0, p0, Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;->mCompleteGestures:Lcom/google/android/systemui/elmyra/SnapshotLogger;

    invoke-virtual {v0}, Lcom/google/android/systemui/elmyra/SnapshotLogger;->getSnapshots()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 305
    iget-object p0, p0, Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;->mIncompleteGestures:Lcom/google/android/systemui/elmyra/SnapshotLogger;

    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/SnapshotLogger;->getSnapshots()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 306
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 307
    throw p1
.end method

.method private sendGestureProgress(Lcom/google/android/systemui/elmyra/sensors/GestureSensor;FI)V
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;->mGestureListener:Lcom/google/android/systemui/elmyra/sensors/GestureSensor$Listener;

    if-eqz v0, :cond_0

    .line 231
    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/systemui/elmyra/sensors/GestureSensor$Listener;->onGestureProgress(Lcom/google/android/systemui/elmyra/sensors/GestureSensor;FI)V

    .line 233
    :cond_0
    iget-object p0, p0, Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;->mSnapshotController:Lcom/google/android/systemui/elmyra/SnapshotController;

    if-eqz p0, :cond_1

    .line 234
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/systemui/elmyra/SnapshotController;->onGestureProgress(Lcom/google/android/systemui/elmyra/sensors/GestureSensor;FI)V

    :cond_1
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6

    .line 240
    iget-object v0, p0, Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;->mChassis:Lcom/google/android/systemui/elmyra/proto/nano/ChassisProtos$Chassis;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move v0, v1

    .line 243
    :goto_0
    iget-object v2, p0, Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;->mChassis:Lcom/google/android/systemui/elmyra/proto/nano/ChassisProtos$Chassis;

    iget-object v2, v2, Lcom/google/android/systemui/elmyra/proto/nano/ChassisProtos$Chassis;->sensors:[Lcom/google/android/systemui/elmyra/proto/nano/ChassisProtos$Sensor;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    const-string v2, "sensors {"

    .line 244
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 245
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  source: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;->mChassis:Lcom/google/android/systemui/elmyra/proto/nano/ChassisProtos$Chassis;

    iget-object v3, v3, Lcom/google/android/systemui/elmyra/proto/nano/ChassisProtos$Chassis;->sensors:[Lcom/google/android/systemui/elmyra/proto/nano/ChassisProtos$Sensor;

    aget-object v3, v3, v0

    iget v3, v3, Lcom/google/android/systemui/elmyra/proto/nano/ChassisProtos$Sensor;->source:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 246
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  gain: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;->mChassis:Lcom/google/android/systemui/elmyra/proto/nano/ChassisProtos$Chassis;

    iget-object v3, v3, Lcom/google/android/systemui/elmyra/proto/nano/ChassisProtos$Chassis;->sensors:[Lcom/google/android/systemui/elmyra/proto/nano/ChassisProtos$Sensor;

    aget-object v3, v3, v0

    iget v3, v3, Lcom/google/android/systemui/elmyra/proto/nano/ChassisProtos$Sensor;->gain:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 247
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  sensitivity: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;->mChassis:Lcom/google/android/systemui/elmyra/proto/nano/ChassisProtos$Chassis;

    iget-object v3, v3, Lcom/google/android/systemui/elmyra/proto/nano/ChassisProtos$Chassis;->sensors:[Lcom/google/android/systemui/elmyra/proto/nano/ChassisProtos$Sensor;

    aget-object v3, v3, v0

    iget v3, v3, Lcom/google/android/systemui/elmyra/proto/nano/ChassisProtos$Sensor;->sensitivity:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "}"

    .line 248
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 250
    :cond_0
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    :cond_1
    move v0, v1

    move v2, v0

    .line 255
    :goto_1
    array-length v3, p3

    if-ge v1, v3, :cond_4

    .line 256
    aget-object v3, p3, v1

    const-string v4, "GoogleServices"

    .line 257
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    move v0, v5

    goto :goto_2

    :cond_2
    const-string v4, "proto"

    .line 259
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v2, v5

    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    if-eqz v0, :cond_5

    if-eqz v2, :cond_5

    .line 266
    invoke-direct {p0, p1}, Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;->dumpProto(Ljava/io/FileDescriptor;)V

    goto :goto_3

    .line 268
    :cond_5
    iget-object v0, p0, Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;->mCompleteGestures:Lcom/google/android/systemui/elmyra/SnapshotLogger;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/systemui/elmyra/SnapshotLogger;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 269
    iget-object v0, p0, Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;->mIncompleteGestures:Lcom/google/android/systemui/elmyra/SnapshotLogger;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/systemui/elmyra/SnapshotLogger;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 271
    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "user_sensitivity: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;->mGestureConfiguration:Lcom/google/android/systemui/elmyra/sensors/config/GestureConfiguration;

    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/sensors/config/GestureConfiguration;->getSensitivity()F

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getChassisConfiguration()Lcom/google/android/systemui/elmyra/proto/nano/ChassisProtos$Chassis;
    .locals 0

    .line 148
    iget-object p0, p0, Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;->mChassis:Lcom/google/android/systemui/elmyra/proto/nano/ChassisProtos$Chassis;

    return-object p0
.end method

.method public onGestureDetected(Lcom/google/android/systemui/elmyra/sensors/GestureSensor$DetectionProperties;)V
    .locals 6

    .line 200
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 202
    iget-wide v2, p0, Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;->mLastDetectionTime:J

    sub-long v2, v0, v2

    iget-wide v4, p0, Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;->mGestureCooldownTime:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_3

    iget-boolean v2, p0, Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;->mIsFalsePrimed:Z

    if-eqz v2, :cond_0

    goto :goto_0

    .line 207
    :cond_0
    iget-object v2, p0, Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;->mGestureListener:Lcom/google/android/systemui/elmyra/sensors/GestureSensor$Listener;

    if-eqz v2, :cond_1

    .line 208
    iget-object v3, p0, Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;->mGestureSensor:Lcom/google/android/systemui/elmyra/sensors/GestureSensor;

    invoke-interface {v2, v3, p1}, Lcom/google/android/systemui/elmyra/sensors/GestureSensor$Listener;->onGestureDetected(Lcom/google/android/systemui/elmyra/sensors/GestureSensor;Lcom/google/android/systemui/elmyra/sensors/GestureSensor$DetectionProperties;)V

    .line 210
    :cond_1
    iget-object v2, p0, Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;->mSnapshotController:Lcom/google/android/systemui/elmyra/SnapshotController;

    if-eqz v2, :cond_2

    .line 211
    iget-object v3, p0, Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;->mGestureSensor:Lcom/google/android/systemui/elmyra/sensors/GestureSensor;

    invoke-virtual {v2, v3, p1}, Lcom/google/android/systemui/elmyra/SnapshotController;->onGestureDetected(Lcom/google/android/systemui/elmyra/sensors/GestureSensor;Lcom/google/android/systemui/elmyra/sensors/GestureSensor$DetectionProperties;)V

    .line 213
    :cond_2
    iget-object v2, p0, Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;->mWestworldLogger:Lcom/google/android/systemui/elmyra/WestworldLogger;

    iget-object v3, p0, Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;->mGestureSensor:Lcom/google/android/systemui/elmyra/sensors/GestureSensor;

    invoke-virtual {v2, v3, p1}, Lcom/google/android/systemui/elmyra/WestworldLogger;->onGestureDetected(Lcom/google/android/systemui/elmyra/sensors/GestureSensor;Lcom/google/android/systemui/elmyra/sensors/GestureSensor$DetectionProperties;)V

    .line 214
    iput-wide v0, p0, Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;->mLastDetectionTime:J

    :cond_3
    :goto_0
    return-void
.end method

.method public onGestureProgress(F)V
    .locals 12

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    if-nez v1, :cond_0

    .line 156
    iput v0, p0, Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;->mGestureProgress:F

    .line 158
    iput-boolean v2, p0, Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;->mIsFalsePrimed:Z

    goto :goto_0

    .line 161
    :cond_0
    iget v1, p0, Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;->mProgressAlpha:F

    mul-float v4, v1, p1

    sub-float v1, v3, v1

    iget v5, p0, Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;->mGestureProgress:F

    mul-float/2addr v1, v5

    add-float/2addr v4, v1

    iput v4, p0, Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;->mGestureProgress:F

    .line 165
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 166
    iget-wide v6, p0, Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;->mLastDetectionTime:J

    sub-long v8, v4, v6

    iget-wide v10, p0, Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;->mGestureCooldownTime:J

    cmp-long v1, v8, v10

    if-ltz v1, :cond_5

    iget-boolean v1, p0, Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;->mIsFalsePrimed:Z

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    sub-long/2addr v4, v6

    .line 171
    iget-wide v6, p0, Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;->mFalsePrimeWindow:J

    cmp-long v1, v4, v6

    const/4 v4, 0x1

    if-gez v1, :cond_2

    cmpl-float v1, p1, v3

    if-nez v1, :cond_2

    .line 177
    iput-boolean v4, p0, Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;->mIsFalsePrimed:Z

    return-void

    .line 181
    :cond_2
    iget v1, p0, Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;->mGestureProgress:F

    iget v5, p0, Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;->mProgressReportThreshold:F

    cmpg-float v6, v1, v5

    if-gez v6, :cond_3

    .line 182
    iget-object p1, p0, Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;->mGestureSensor:Lcom/google/android/systemui/elmyra/sensors/GestureSensor;

    invoke-direct {p0, p1, v0, v2}, Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;->sendGestureProgress(Lcom/google/android/systemui/elmyra/sensors/GestureSensor;FI)V

    .line 183
    iget-object p1, p0, Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;->mWestworldLogger:Lcom/google/android/systemui/elmyra/WestworldLogger;

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;->mGestureSensor:Lcom/google/android/systemui/elmyra/sensors/GestureSensor;

    invoke-virtual {p1, p0, v0, v2}, Lcom/google/android/systemui/elmyra/WestworldLogger;->onGestureProgress(Lcom/google/android/systemui/elmyra/sensors/GestureSensor;FI)V

    goto :goto_1

    :cond_3
    sub-float/2addr v1, v5

    sub-float v0, v3, v5

    div-float/2addr v1, v0

    cmpl-float p1, p1, v3

    if-nez p1, :cond_4

    const/4 v4, 0x2

    .line 194
    :cond_4
    iget-object p1, p0, Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;->mGestureSensor:Lcom/google/android/systemui/elmyra/sensors/GestureSensor;

    invoke-direct {p0, p1, v1, v4}, Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;->sendGestureProgress(Lcom/google/android/systemui/elmyra/sensors/GestureSensor;FI)V

    .line 195
    iget-object p1, p0, Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;->mWestworldLogger:Lcom/google/android/systemui/elmyra/WestworldLogger;

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;->mGestureSensor:Lcom/google/android/systemui/elmyra/sensors/GestureSensor;

    invoke-virtual {p1, p0, v1, v4}, Lcom/google/android/systemui/elmyra/WestworldLogger;->onGestureProgress(Lcom/google/android/systemui/elmyra/sensors/GestureSensor;FI)V

    :cond_5
    :goto_1
    return-void
.end method

.method public onSnapshotReceived(Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Snapshot;)V
    .locals 2

    .line 219
    iget-object v0, p1, Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Snapshot;->header:Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$SnapshotHeader;

    iget v0, v0, Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$SnapshotHeader;->gestureType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 220
    iget-object p0, p0, Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;->mWestworldLogger:Lcom/google/android/systemui/elmyra/WestworldLogger;

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/elmyra/WestworldLogger;->didReceiveSnapshot(Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Snapshot;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 223
    iget-object p0, p0, Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;->mCompleteGestures:Lcom/google/android/systemui/elmyra/SnapshotLogger;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/systemui/elmyra/SnapshotLogger;->addSnapshot(Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Snapshot;J)V

    goto :goto_0

    .line 225
    :cond_1
    iget-object p0, p0, Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;->mIncompleteGestures:Lcom/google/android/systemui/elmyra/SnapshotLogger;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/systemui/elmyra/SnapshotLogger;->addSnapshot(Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Snapshot;J)V

    :goto_0
    return-void
.end method

.method public setGestureListener(Lcom/google/android/systemui/elmyra/sensors/GestureSensor$Listener;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;->mGestureListener:Lcom/google/android/systemui/elmyra/sensors/GestureSensor$Listener;

    return-void
.end method

.method public setSnapshotListener(Lcom/google/android/systemui/elmyra/SnapshotController$Listener;)V
    .locals 0

    .line 136
    iget-object p0, p0, Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;->mSnapshotController:Lcom/google/android/systemui/elmyra/SnapshotController;

    if-eqz p0, :cond_0

    .line 137
    invoke-virtual {p0, p1}, Lcom/google/android/systemui/elmyra/SnapshotController;->setListener(Lcom/google/android/systemui/elmyra/SnapshotController$Listener;)V

    :cond_0
    return-void
.end method

.method public storeChassisConfiguration(Lcom/google/android/systemui/elmyra/proto/nano/ChassisProtos$Chassis;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;->mChassis:Lcom/google/android/systemui/elmyra/proto/nano/ChassisProtos$Chassis;

    .line 144
    iget-object p0, p0, Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;->mWestworldLogger:Lcom/google/android/systemui/elmyra/WestworldLogger;

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/elmyra/WestworldLogger;->didReceiveChassis(Lcom/google/android/systemui/elmyra/proto/nano/ChassisProtos$Chassis;)V

    return-void
.end method
