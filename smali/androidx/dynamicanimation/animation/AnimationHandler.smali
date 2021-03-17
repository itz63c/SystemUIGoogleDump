.class public final Landroidx/dynamicanimation/animation/AnimationHandler;
.super Ljava/lang/Object;
.source "AnimationHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/dynamicanimation/animation/AnimationHandler$FrameCallbackScheduler14;,
        Landroidx/dynamicanimation/animation/AnimationHandler$FrameCallbackScheduler16;,
        Landroidx/dynamicanimation/animation/AnimationHandler$AnimationCallbackDispatcher;,
        Landroidx/dynamicanimation/animation/AnimationHandler$FrameCallbackScheduler;,
        Landroidx/dynamicanimation/animation/AnimationHandler$AnimationFrameCallback;
    }
.end annotation


# static fields
.field private static final sAnimatorHandler:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroidx/dynamicanimation/animation/AnimationHandler;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mAnimationCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/dynamicanimation/animation/AnimationHandler$AnimationFrameCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mCallbackDispatcher:Landroidx/dynamicanimation/animation/AnimationHandler$AnimationCallbackDispatcher;

.field mCurrentFrameTime:J

.field private final mDelayedCallbackStartTime:Landroidx/collection/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SimpleArrayMap<",
            "Landroidx/dynamicanimation/animation/AnimationHandler$AnimationFrameCallback;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mListDirty:Z

.field private final mRunnable:Ljava/lang/Runnable;

.field private mScheduler:Landroidx/dynamicanimation/animation/AnimationHandler$FrameCallbackScheduler;


# direct methods
.method public static synthetic $r8$lambda$YiBk3K09ifLdAPQDzrOxNk7Tzy0(Landroidx/dynamicanimation/animation/AnimationHandler;)V
    .locals 0

    invoke-direct {p0}, Landroidx/dynamicanimation/animation/AnimationHandler;->lambda$new$0()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 97
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroidx/dynamicanimation/animation/AnimationHandler;->sAnimatorHandler:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(Landroidx/dynamicanimation/animation/AnimationHandler$FrameCallbackScheduler;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scheduler"
        }
    .end annotation

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    new-instance v0, Landroidx/collection/SimpleArrayMap;

    invoke-direct {v0}, Landroidx/collection/SimpleArrayMap;-><init>()V

    iput-object v0, p0, Landroidx/dynamicanimation/animation/AnimationHandler;->mDelayedCallbackStartTime:Landroidx/collection/SimpleArrayMap;

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/dynamicanimation/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    .line 107
    new-instance v0, Landroidx/dynamicanimation/animation/AnimationHandler$AnimationCallbackDispatcher;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/dynamicanimation/animation/AnimationHandler$AnimationCallbackDispatcher;-><init>(Landroidx/dynamicanimation/animation/AnimationHandler;Landroidx/dynamicanimation/animation/AnimationHandler$1;)V

    iput-object v0, p0, Landroidx/dynamicanimation/animation/AnimationHandler;->mCallbackDispatcher:Landroidx/dynamicanimation/animation/AnimationHandler$AnimationCallbackDispatcher;

    .line 110
    new-instance v0, Landroidx/dynamicanimation/animation/AnimationHandler-$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroidx/dynamicanimation/animation/AnimationHandler-$$ExternalSyntheticLambda0;-><init>(Landroidx/dynamicanimation/animation/AnimationHandler;)V

    iput-object v0, p0, Landroidx/dynamicanimation/animation/AnimationHandler;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x0

    .line 114
    iput-wide v0, p0, Landroidx/dynamicanimation/animation/AnimationHandler;->mCurrentFrameTime:J

    const/4 v0, 0x0

    .line 116
    iput-boolean v0, p0, Landroidx/dynamicanimation/animation/AnimationHandler;->mListDirty:Z

    .line 136
    iput-object p1, p0, Landroidx/dynamicanimation/animation/AnimationHandler;->mScheduler:Landroidx/dynamicanimation/animation/AnimationHandler$FrameCallbackScheduler;

    return-void
.end method

.method static synthetic access$000(Landroidx/dynamicanimation/animation/AnimationHandler;)Ljava/lang/Runnable;
    .locals 0

    .line 43
    iget-object p0, p0, Landroidx/dynamicanimation/animation/AnimationHandler;->mRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$100(Landroidx/dynamicanimation/animation/AnimationHandler;)Landroidx/dynamicanimation/animation/AnimationHandler$FrameCallbackScheduler;
    .locals 0

    .line 43
    iget-object p0, p0, Landroidx/dynamicanimation/animation/AnimationHandler;->mScheduler:Landroidx/dynamicanimation/animation/AnimationHandler$FrameCallbackScheduler;

    return-object p0
.end method

.method private cleanUpList()V
    .locals 2

    .line 211
    iget-boolean v0, p0, Landroidx/dynamicanimation/animation/AnimationHandler;->mListDirty:Z

    if-eqz v0, :cond_2

    .line 212
    iget-object v0, p0, Landroidx/dynamicanimation/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 213
    iget-object v1, p0, Landroidx/dynamicanimation/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 214
    iget-object v1, p0, Landroidx/dynamicanimation/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 217
    iput-boolean v0, p0, Landroidx/dynamicanimation/animation/AnimationHandler;->mListDirty:Z

    :cond_2
    return-void
.end method

.method static getInstance()Landroidx/dynamicanimation/animation/AnimationHandler;
    .locals 4

    .line 119
    sget-object v0, Landroidx/dynamicanimation/animation/AnimationHandler;->sAnimatorHandler:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 120
    new-instance v1, Landroidx/dynamicanimation/animation/AnimationHandler;

    .line 121
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_0

    .line 122
    new-instance v2, Landroidx/dynamicanimation/animation/AnimationHandler$FrameCallbackScheduler16;

    invoke-direct {v2}, Landroidx/dynamicanimation/animation/AnimationHandler$FrameCallbackScheduler16;-><init>()V

    goto :goto_0

    .line 123
    :cond_0
    new-instance v2, Landroidx/dynamicanimation/animation/AnimationHandler$FrameCallbackScheduler14;

    invoke-direct {v2}, Landroidx/dynamicanimation/animation/AnimationHandler$FrameCallbackScheduler14;-><init>()V

    :goto_0
    invoke-direct {v1, v2}, Landroidx/dynamicanimation/animation/AnimationHandler;-><init>(Landroidx/dynamicanimation/animation/AnimationHandler$FrameCallbackScheduler;)V

    .line 124
    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 126
    :cond_1
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/dynamicanimation/animation/AnimationHandler;

    return-object v0
.end method

.method private isCallbackDue(Landroidx/dynamicanimation/animation/AnimationHandler$AnimationFrameCallback;J)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "callback",
            "currentTime"
        }
    .end annotation

    .line 199
    iget-object v0, p0, Landroidx/dynamicanimation/animation/AnimationHandler;->mDelayedCallbackStartTime:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v0, p1}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 203
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long p2, v2, p2

    if-gez p2, :cond_1

    .line 204
    iget-object p0, p0, Landroidx/dynamicanimation/animation/AnimationHandler;->mDelayedCallbackStartTime:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {p0, p1}, Landroidx/collection/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$new$0()V
    .locals 0

    .line 111
    iget-object p0, p0, Landroidx/dynamicanimation/animation/AnimationHandler;->mCallbackDispatcher:Landroidx/dynamicanimation/animation/AnimationHandler$AnimationCallbackDispatcher;

    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/AnimationHandler$AnimationCallbackDispatcher;->dispatchAnimationFrame()V

    return-void
.end method


# virtual methods
.method addAnimationFrameCallback(Landroidx/dynamicanimation/animation/AnimationHandler$AnimationFrameCallback;J)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "callback",
            "delay"
        }
    .end annotation

    .line 143
    iget-object v0, p0, Landroidx/dynamicanimation/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 144
    iget-object v0, p0, Landroidx/dynamicanimation/animation/AnimationHandler;->mScheduler:Landroidx/dynamicanimation/animation/AnimationHandler$FrameCallbackScheduler;

    iget-object v1, p0, Landroidx/dynamicanimation/animation/AnimationHandler;->mRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Landroidx/dynamicanimation/animation/AnimationHandler$FrameCallbackScheduler;->postFrameCallback(Ljava/lang/Runnable;)V

    .line 146
    :cond_0
    iget-object v0, p0, Landroidx/dynamicanimation/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 147
    iget-object v0, p0, Landroidx/dynamicanimation/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_2

    .line 151
    iget-object p0, p0, Landroidx/dynamicanimation/animation/AnimationHandler;->mDelayedCallbackStartTime:Landroidx/collection/SimpleArrayMap;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method doAnimationFrame(J)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frameTime"
        }
    .end annotation

    .line 169
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    .line 170
    :goto_0
    iget-object v3, p0, Landroidx/dynamicanimation/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 171
    iget-object v3, p0, Landroidx/dynamicanimation/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/dynamicanimation/animation/AnimationHandler$AnimationFrameCallback;

    if-nez v3, :cond_0

    goto :goto_1

    .line 175
    :cond_0
    invoke-direct {p0, v3, v0, v1}, Landroidx/dynamicanimation/animation/AnimationHandler;->isCallbackDue(Landroidx/dynamicanimation/animation/AnimationHandler$AnimationFrameCallback;J)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 176
    invoke-interface {v3, p1, p2}, Landroidx/dynamicanimation/animation/AnimationHandler$AnimationFrameCallback;->doAnimationFrame(J)Z

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 179
    :cond_2
    invoke-direct {p0}, Landroidx/dynamicanimation/animation/AnimationHandler;->cleanUpList()V

    return-void
.end method

.method public getScheduler()Landroidx/dynamicanimation/animation/AnimationHandler$FrameCallbackScheduler;
    .locals 0

    .line 246
    iget-object p0, p0, Landroidx/dynamicanimation/animation/AnimationHandler;->mScheduler:Landroidx/dynamicanimation/animation/AnimationHandler$FrameCallbackScheduler;

    return-object p0
.end method

.method isCurrentThread()Z
    .locals 0

    .line 189
    iget-object p0, p0, Landroidx/dynamicanimation/animation/AnimationHandler;->mScheduler:Landroidx/dynamicanimation/animation/AnimationHandler$FrameCallbackScheduler;

    invoke-interface {p0}, Landroidx/dynamicanimation/animation/AnimationHandler$FrameCallbackScheduler;->isCurrentThread()Z

    move-result p0

    return p0
.end method

.method removeCallback(Landroidx/dynamicanimation/animation/AnimationHandler$AnimationFrameCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    .line 159
    iget-object v0, p0, Landroidx/dynamicanimation/animation/AnimationHandler;->mDelayedCallbackStartTime:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v0, p1}, Landroidx/collection/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    iget-object v0, p0, Landroidx/dynamicanimation/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 162
    iget-object v0, p0, Landroidx/dynamicanimation/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    .line 163
    iput-boolean p1, p0, Landroidx/dynamicanimation/animation/AnimationHandler;->mListDirty:Z

    :cond_0
    return-void
.end method

.method public setScheduler(Landroidx/dynamicanimation/animation/AnimationHandler$FrameCallbackScheduler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scheduler"
        }
    .end annotation

    .line 232
    iput-object p1, p0, Landroidx/dynamicanimation/animation/AnimationHandler;->mScheduler:Landroidx/dynamicanimation/animation/AnimationHandler$FrameCallbackScheduler;

    return-void
.end method
