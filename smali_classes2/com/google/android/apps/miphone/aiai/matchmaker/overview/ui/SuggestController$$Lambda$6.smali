.class final synthetic Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/SuggestController$$Lambda$6;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/SuggestController$Factory;


# static fields
.field static final $instance:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/SuggestController$Factory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/SuggestController$$Lambda$6;

    invoke-direct {v0}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/SuggestController$$Lambda$6;-><init>()V

    sput-object v0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/SuggestController$$Lambda$6;->$instance:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/SuggestController$Factory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Landroid/content/Context;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/ContentSuggestionsServiceWrapper;
    .locals 0

    invoke-static {p1, p2, p3, p4}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/SuggestController;->lambda$static$0$SuggestController(Landroid/content/Context;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/ContentSuggestionsServiceWrapper;

    move-result-object p0

    return-object p0
.end method
