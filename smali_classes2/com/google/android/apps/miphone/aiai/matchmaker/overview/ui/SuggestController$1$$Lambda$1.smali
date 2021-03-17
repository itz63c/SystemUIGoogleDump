.class final synthetic Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/SuggestController$1$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/app/contentsuggestions/ContentSuggestionsManager$ClassificationsCallback;


# instance fields
.field private final arg$1:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/SuggestController$1$$Lambda$1;->arg$1:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onContentClassificationsAvailable(ILjava/util/List;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/SuggestController$1$$Lambda$1;->arg$1:Ljava/lang/ref/WeakReference;

    invoke-static {p0, p1, p2}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/SuggestController$1;->lambda$classifyContentSelections$1$SuggestController$1(Ljava/lang/ref/WeakReference;ILjava/util/List;)V

    return-void
.end method
