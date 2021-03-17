.class final synthetic Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/SuggestController$$Lambda$0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Executor;


# instance fields
.field private final arg$1:Landroid/os/Handler;


# direct methods
.method private constructor <init>(Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/SuggestController$$Lambda$0;->arg$1:Landroid/os/Handler;

    return-void
.end method

.method static get$Lambda(Landroid/os/Handler;)Ljava/util/concurrent/Executor;
    .locals 1

    new-instance v0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/SuggestController$$Lambda$0;

    invoke-direct {v0, p0}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/SuggestController$$Lambda$0;-><init>(Landroid/os/Handler;)V

    return-object v0
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/SuggestController$$Lambda$0;->arg$1:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
