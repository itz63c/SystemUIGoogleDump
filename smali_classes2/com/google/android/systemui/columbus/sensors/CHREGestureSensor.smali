.class public final Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;
.super Lcom/google/android/systemui/columbus/sensors/GestureSensor;
.source "CHREGestureSensor.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCHREGestureSensor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CHREGestureSensor.kt\ncom/google/android/systemui/columbus/sensors/CHREGestureSensor\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,274:1\n13506#2,2:275\n*E\n*S KotlinDebug\n*F\n+ 1 CHREGestureSensor.kt\ncom/google/android/systemui/columbus/sensors/CHREGestureSensor\n*L\n192#1,2:275\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor$Companion;


# instance fields
.field private final context:Landroid/content/Context;

.field private contextHubClient:Landroid/hardware/location/ContextHubClient;

.field private final contextHubClientCallback:Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor$contextHubClientCallback$1;

.field private final gestureConfiguration:Lcom/google/android/systemui/columbus/sensors/config/GestureConfiguration;

.field private isAwake:Z

.field private isDozing:Z

.field private isListening:Z

.field private screenOn:Z

.field private screenStateUpdated:Z

.field private final statusBarStateListener:Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor$statusBarStateListener$1;

.field private final uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

.field private final wakefulnessLifecycleObserver:Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor$wakefulnessLifecycleObserver$1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;->Companion:Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/logging/UiEventLogger;Lcom/google/android/systemui/columbus/sensors/config/GestureConfiguration;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/keyguard/WakefulnessLifecycle;)V
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiEventLogger"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gestureConfiguration"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "statusBarStateController"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "wakefulnessLifecycle"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-direct {p0}, Lcom/google/android/systemui/columbus/sensors/GestureSensor;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;->context:Landroid/content/Context;

    .line 28
    iput-object p2, p0, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 29
    iput-object p3, p0, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;->gestureConfiguration:Lcom/google/android/systemui/columbus/sensors/config/GestureConfiguration;

    .line 37
    new-instance p1, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor$contextHubClientCallback$1;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor$contextHubClientCallback$1;-><init>(Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;)V

    iput-object p1, p0, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;->contextHubClientCallback:Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor$contextHubClientCallback$1;

    .line 77
    new-instance p1, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor$statusBarStateListener$1;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor$statusBarStateListener$1;-><init>(Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;)V

    iput-object p1, p0, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;->statusBarStateListener:Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor$statusBarStateListener$1;

    .line 82
    new-instance p2, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor$wakefulnessLifecycleObserver$1;

    invoke-direct {p2, p0}, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor$wakefulnessLifecycleObserver$1;-><init>(Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;)V

    iput-object p2, p0, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;->wakefulnessLifecycleObserver:Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor$wakefulnessLifecycleObserver$1;

    .line 101
    invoke-interface {p4}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isDozing()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;->isDozing:Z

    .line 102
    invoke-virtual {p5}, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->getWakefulness()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;->isAwake:Z

    if-eqz v0, :cond_1

    .line 103
    iget-boolean v0, p0, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;->isDozing:Z

    if-nez v0, :cond_1

    move v1, v2

    :cond_1
    iput-boolean v1, p0, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;->screenOn:Z

    .line 104
    iput-boolean v2, p0, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;->screenStateUpdated:Z

    .line 107
    new-instance v0, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor$1;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor$1;-><init>(Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;)V

    invoke-virtual {p3, v0}, Lcom/google/android/systemui/columbus/sensors/config/GestureConfiguration;->setListener(Lcom/google/android/systemui/columbus/sensors/config/GestureConfiguration$Listener;)V

    .line 112
    invoke-interface {p4, p1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 113
    invoke-virtual {p5, p2}, Lcom/android/systemui/keyguard/Lifecycle;->addObserver(Ljava/lang/Object;)V

    .line 114
    invoke-direct {p0}, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;->initializeContextHubClientIfNull()V

    return-void
.end method

.method public static final synthetic access$handleDozingChanged(Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;Z)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;->handleDozingChanged(Z)V

    return-void
.end method

.method public static final synthetic access$handleGestureDetection(Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;Lcom/google/android/systemui/columbus/proto/nano/ColumbusProto$GestureDetected;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;->handleGestureDetection(Lcom/google/android/systemui/columbus/proto/nano/ColumbusProto$GestureDetected;)V

    return-void
.end method

.method public static final synthetic access$handleNanoappEvents(Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;Lcom/google/android/systemui/columbus/proto/nano/ColumbusProto$NanoappEvents;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;->handleNanoappEvents(Lcom/google/android/systemui/columbus/proto/nano/ColumbusProto$NanoappEvents;)V

    return-void
.end method

.method public static final synthetic access$handleWakefullnessChanged(Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;Z)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;->handleWakefullnessChanged(Z)V

    return-void
.end method

.method public static final synthetic access$startRecognizer(Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;->startRecognizer()V

    return-void
.end method

.method public static final synthetic access$updateScreenState(Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;->updateScreenState()V

    return-void
.end method

.method public static final synthetic access$updateSensitivity(Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;Lcom/google/android/systemui/columbus/sensors/config/GestureConfiguration;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;->updateSensitivity(Lcom/google/android/systemui/columbus/sensors/config/GestureConfiguration;)V

    return-void
.end method

.method private final handleDozingChanged(Z)V
    .locals 1

    .line 225
    iget-boolean v0, p0, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;->isDozing:Z

    if-eq v0, p1, :cond_0

    .line 226
    iput-boolean p1, p0, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;->isDozing:Z

    .line 227
    invoke-direct {p0}, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;->updateScreenState()V

    :cond_0
    return-void
.end method

.method private final handleGestureDetection(Lcom/google/android/systemui/columbus/proto/nano/ColumbusProto$GestureDetected;)V
    .locals 2

    .line 185
    iget p1, p1, Lcom/google/android/systemui/columbus/proto/nano/ColumbusProto$GestureDetected;->gestureType:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 187
    :goto_0
    invoke-direct {p0, p1}, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;->protoGestureTypeToGesture(I)I

    move-result p1

    .line 188
    new-instance v1, Lcom/google/android/systemui/columbus/sensors/GestureSensor$DetectionProperties;

    invoke-direct {v1, v0}, Lcom/google/android/systemui/columbus/sensors/GestureSensor$DetectionProperties;-><init>(Z)V

    .line 186
    invoke-virtual {p0, p1, v1}, Lcom/google/android/systemui/columbus/sensors/GestureSensor;->reportGestureDetected(ILcom/google/android/systemui/columbus/sensors/GestureSensor$DetectionProperties;)V

    return-void
.end method

.method private final handleNanoappEvents(Lcom/google/android/systemui/columbus/proto/nano/ColumbusProto$NanoappEvents;)V
    .locals 6

    .line 192
    iget-object p1, p1, Lcom/google/android/systemui/columbus/proto/nano/ColumbusProto$NanoappEvents;->batchedEvents:[Lcom/google/android/systemui/columbus/proto/nano/ColumbusProto$NanoappEvent;

    const-string v0, "nanoappEvents.batchedEvents"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13506
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 193
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object v3

    const v4, 0x186d3

    .line 194
    invoke-virtual {v3, v4}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    move-result-object v3

    .line 195
    iget-wide v4, v2, Lcom/google/android/systemui/columbus/proto/nano/ColumbusProto$NanoappEvent;->timestamp:J

    invoke-virtual {v3, v4, v5}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object v3

    .line 196
    iget v2, v2, Lcom/google/android/systemui/columbus/proto/nano/ColumbusProto$NanoappEvent;->type:I

    invoke-direct {p0, v2}, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;->toWestWorldEventType(I)I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v2

    .line 197
    invoke-virtual {v2}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object v2

    .line 193
    invoke-static {v2}, Landroid/util/StatsLog;->write(Landroid/util/StatsEvent;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final handleWakefullnessChanged(Z)V
    .locals 1

    .line 232
    iget-boolean v0, p0, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;->isAwake:Z

    if-eq v0, p1, :cond_0

    .line 233
    iput-boolean p1, p0, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;->isAwake:Z

    .line 234
    invoke-direct {p0}, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;->updateScreenState()V

    :cond_0
    return-void
.end method

.method private final initializeContextHubClientIfNull()V
    .locals 4

    .line 161
    iget-object v0, p0, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;->contextHubClient:Landroid/hardware/location/ContextHubClient;

    if-nez v0, :cond_4

    .line 163
    iget-object v0, p0, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;->context:Landroid/content/Context;

    const-string v1, "contexthub"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/location/ContextHubManager;

    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 164
    :cond_0
    invoke-virtual {v0}, Landroid/hardware/location/ContextHubManager;->getContextHubs()Ljava/util/List;

    move-result-object v1

    :goto_0
    const/4 v2, 0x0

    if-nez v1, :cond_1

    move v3, v2

    goto :goto_1

    .line 165
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    :goto_1
    if-nez v3, :cond_2

    const-string p0, "Columbus/GestureSensor"

    const-string v0, "No context hubs found"

    .line 166
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    if-nez v1, :cond_3

    goto :goto_2

    .line 170
    :cond_3
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/location/ContextHubInfo;

    .line 172
    iget-object v2, p0, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;->contextHubClientCallback:Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor$contextHubClientCallback$1;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/location/ContextHubManager;->createClient(Landroid/hardware/location/ContextHubInfo;Landroid/hardware/location/ContextHubClientCallback;)Landroid/hardware/location/ContextHubClient;

    move-result-object v0

    .line 171
    iput-object v0, p0, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;->contextHubClient:Landroid/hardware/location/ContextHubClient;

    :cond_4
    :goto_2
    return-void
.end method

.method private final protoGestureTypeToGesture(I)I
    .locals 1

    const/4 p0, 0x2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    if-eq p1, p0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    move p0, v0

    :cond_1
    :goto_0
    return p0
.end method

.method private final sendMessageToNanoApp(I[B)Z
    .locals 5

    .line 145
    invoke-direct {p0}, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;->initializeContextHubClientIfNull()V

    .line 146
    iget-object v0, p0, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;->contextHubClient:Landroid/hardware/location/ContextHubClient;

    const/4 v1, 0x0

    const-string v2, "Columbus/GestureSensor"

    if-nez v0, :cond_0

    const-string p0, "ContextHubClient null"

    .line 147
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    const-wide v3, 0x476f6f676c001019L    # 1.3057659520462483E36

    .line 150
    invoke-static {v3, v4, p1, p2}, Landroid/hardware/location/NanoAppMessage;->createMessageToNanoApp(JI[B)Landroid/hardware/location/NanoAppMessage;

    move-result-object p2

    .line 152
    iget-object p0, p0, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;->contextHubClient:Landroid/hardware/location/ContextHubClient;

    if-nez p0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p2}, Landroid/hardware/location/ContextHubClient;->sendMessageToNanoApp(Landroid/hardware/location/NanoAppMessage;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :goto_0
    if-nez p0, :cond_2

    goto :goto_1

    .line 153
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-eqz p2, :cond_3

    .line 154
    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to send message "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " to nanoapp, error code "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method private final sendScreenState()V
    .locals 3

    .line 249
    new-instance v0, Lcom/google/android/systemui/columbus/proto/nano/ColumbusProto$ScreenStateUpdate;

    invoke-direct {v0}, Lcom/google/android/systemui/columbus/proto/nano/ColumbusProto$ScreenStateUpdate;-><init>()V

    .line 250
    iget-boolean v1, p0, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;->screenOn:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    iput v1, v0, Lcom/google/android/systemui/columbus/proto/nano/ColumbusProto$ScreenStateUpdate;->screenState:I

    const/16 v1, 0x190

    .line 257
    invoke-static {v0}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v0

    const-string v2, "toByteArray(screenStateUpdate)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 255
    invoke-direct {p0, v1, v0}, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;->sendMessageToNanoApp(I[B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;->screenStateUpdated:Z

    return-void
.end method

.method private final startRecognizer()V
    .locals 2

    .line 135
    new-instance v0, Lcom/google/android/systemui/columbus/proto/nano/ColumbusProto$RecognizerStart;

    invoke-direct {v0}, Lcom/google/android/systemui/columbus/proto/nano/ColumbusProto$RecognizerStart;-><init>()V

    .line 136
    iget-object v1, p0, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;->gestureConfiguration:Lcom/google/android/systemui/columbus/sensors/config/GestureConfiguration;

    invoke-virtual {v1}, Lcom/google/android/systemui/columbus/sensors/config/GestureConfiguration;->getSensitivity()F

    move-result v1

    iput v1, v0, Lcom/google/android/systemui/columbus/proto/nano/ColumbusProto$RecognizerStart;->sensitivity:F

    .line 138
    invoke-static {v0}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v0

    const-string v1, "toByteArray(recognizerStart)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x64

    .line 137
    invoke-direct {p0, v1, v0}, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;->sendMessageToNanoApp(I[B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    iget-object p0, p0, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v0, Lcom/google/android/systemui/columbus/ColumbusEvent;->COLUMBUS_MODE_LOW_POWER_ACTIVE:Lcom/google/android/systemui/columbus/ColumbusEvent;

    invoke-interface {p0, v0}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    :cond_0
    return-void
.end method

.method private final toWestWorldEventType(I)I
    .locals 0

    packed-switch p1, :pswitch_data_0

    .line 220
    sget-object p0, Landroid/hardware/google/pixel/vendor/PixelAtoms$DoubleTapNanoappEventReported$Type;->UNKNOWN:Landroid/hardware/google/pixel/vendor/PixelAtoms$DoubleTapNanoappEventReported$Type;

    invoke-virtual {p0}, Landroid/hardware/google/pixel/vendor/PixelAtoms$DoubleTapNanoappEventReported$Type;->getNumber()I

    move-result p0

    goto :goto_0

    .line 218
    :pswitch_0
    sget-object p0, Landroid/hardware/google/pixel/vendor/PixelAtoms$DoubleTapNanoappEventReported$Type;->DOUBLE_TAP:Landroid/hardware/google/pixel/vendor/PixelAtoms$DoubleTapNanoappEventReported$Type;

    invoke-virtual {p0}, Landroid/hardware/google/pixel/vendor/PixelAtoms$DoubleTapNanoappEventReported$Type;->getNumber()I

    move-result p0

    goto :goto_0

    .line 216
    :pswitch_1
    sget-object p0, Landroid/hardware/google/pixel/vendor/PixelAtoms$DoubleTapNanoappEventReported$Type;->SINGLE_TAP:Landroid/hardware/google/pixel/vendor/PixelAtoms$DoubleTapNanoappEventReported$Type;

    invoke-virtual {p0}, Landroid/hardware/google/pixel/vendor/PixelAtoms$DoubleTapNanoappEventReported$Type;->getNumber()I

    move-result p0

    goto :goto_0

    .line 214
    :pswitch_2
    sget-object p0, Landroid/hardware/google/pixel/vendor/PixelAtoms$DoubleTapNanoappEventReported$Type;->ML_PREDICTION_STOP:Landroid/hardware/google/pixel/vendor/PixelAtoms$DoubleTapNanoappEventReported$Type;

    invoke-virtual {p0}, Landroid/hardware/google/pixel/vendor/PixelAtoms$DoubleTapNanoappEventReported$Type;->getNumber()I

    move-result p0

    goto :goto_0

    .line 212
    :pswitch_3
    sget-object p0, Landroid/hardware/google/pixel/vendor/PixelAtoms$DoubleTapNanoappEventReported$Type;->ML_PREDICTION_START:Landroid/hardware/google/pixel/vendor/PixelAtoms$DoubleTapNanoappEventReported$Type;

    invoke-virtual {p0}, Landroid/hardware/google/pixel/vendor/PixelAtoms$DoubleTapNanoappEventReported$Type;->getNumber()I

    move-result p0

    goto :goto_0

    .line 210
    :pswitch_4
    sget-object p0, Landroid/hardware/google/pixel/vendor/PixelAtoms$DoubleTapNanoappEventReported$Type;->HIGH_IMU_ODR_STOP:Landroid/hardware/google/pixel/vendor/PixelAtoms$DoubleTapNanoappEventReported$Type;

    invoke-virtual {p0}, Landroid/hardware/google/pixel/vendor/PixelAtoms$DoubleTapNanoappEventReported$Type;->getNumber()I

    move-result p0

    goto :goto_0

    .line 208
    :pswitch_5
    sget-object p0, Landroid/hardware/google/pixel/vendor/PixelAtoms$DoubleTapNanoappEventReported$Type;->HIGH_IMU_ODR_START:Landroid/hardware/google/pixel/vendor/PixelAtoms$DoubleTapNanoappEventReported$Type;

    invoke-virtual {p0}, Landroid/hardware/google/pixel/vendor/PixelAtoms$DoubleTapNanoappEventReported$Type;->getNumber()I

    move-result p0

    goto :goto_0

    .line 206
    :pswitch_6
    sget-object p0, Landroid/hardware/google/pixel/vendor/PixelAtoms$DoubleTapNanoappEventReported$Type;->GATE_STOP:Landroid/hardware/google/pixel/vendor/PixelAtoms$DoubleTapNanoappEventReported$Type;

    invoke-virtual {p0}, Landroid/hardware/google/pixel/vendor/PixelAtoms$DoubleTapNanoappEventReported$Type;->getNumber()I

    move-result p0

    goto :goto_0

    .line 204
    :pswitch_7
    sget-object p0, Landroid/hardware/google/pixel/vendor/PixelAtoms$DoubleTapNanoappEventReported$Type;->GATE_START:Landroid/hardware/google/pixel/vendor/PixelAtoms$DoubleTapNanoappEventReported$Type;

    invoke-virtual {p0}, Landroid/hardware/google/pixel/vendor/PixelAtoms$DoubleTapNanoappEventReported$Type;->getNumber()I

    move-result p0

    :goto_0
    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final updateScreenState()V
    .locals 2

    .line 239
    iget-boolean v0, p0, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;->isAwake:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;->isDozing:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 240
    :goto_0
    iget-boolean v1, p0, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;->screenOn:Z

    if-ne v1, v0, :cond_1

    iget-boolean v1, p0, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;->screenStateUpdated:Z

    if-nez v1, :cond_2

    .line 241
    :cond_1
    iput-boolean v0, p0, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;->screenOn:Z

    .line 242
    invoke-virtual {p0}, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;->isListening()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 243
    invoke-direct {p0}, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;->sendScreenState()V

    :cond_2
    return-void
.end method

.method private final updateSensitivity(Lcom/google/android/systemui/columbus/sensors/config/GestureConfiguration;)V
    .locals 1

    .line 178
    new-instance v0, Lcom/google/android/systemui/columbus/proto/nano/ColumbusProto$SensitivityUpdate;

    invoke-direct {v0}, Lcom/google/android/systemui/columbus/proto/nano/ColumbusProto$SensitivityUpdate;-><init>()V

    .line 179
    invoke-virtual {p1}, Lcom/google/android/systemui/columbus/sensors/config/GestureConfiguration;->getSensitivity()F

    move-result p1

    iput p1, v0, Lcom/google/android/systemui/columbus/proto/nano/ColumbusProto$SensitivityUpdate;->sensitivity:F

    .line 181
    invoke-static {v0}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object p1

    const-string v0, "toByteArray(sensitivityUpdate)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0xc8

    .line 180
    invoke-direct {p0, v0, p1}, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;->sendMessageToNanoApp(I[B)Z

    return-void
.end method


# virtual methods
.method public isListening()Z
    .locals 0

    .line 35
    iget-boolean p0, p0, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;->isListening:Z

    return p0
.end method

.method public setListening(Z)V
    .locals 0

    .line 35
    iput-boolean p1, p0, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;->isListening:Z

    return-void
.end method

.method public startListening()V
    .locals 1

    const/4 v0, 0x1

    .line 118
    invoke-virtual {p0, v0}, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;->setListening(Z)V

    .line 122
    invoke-direct {p0}, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;->startRecognizer()V

    .line 123
    invoke-direct {p0}, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;->sendScreenState()V

    return-void
.end method

.method public stopListening()V
    .locals 3

    const/4 v0, 0x0

    new-array v1, v0, [B

    const/16 v2, 0x65

    .line 127
    invoke-direct {p0, v2, v1}, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;->sendMessageToNanoApp(I[B)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 129
    iget-object v1, p0, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v2, Lcom/google/android/systemui/columbus/ColumbusEvent;->COLUMBUS_MODE_INACTIVE:Lcom/google/android/systemui/columbus/ColumbusEvent;

    invoke-interface {v1, v2}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 131
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;->setListening(Z)V

    return-void
.end method
