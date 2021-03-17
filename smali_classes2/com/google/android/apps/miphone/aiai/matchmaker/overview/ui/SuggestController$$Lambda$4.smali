.class final synthetic Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/SuggestController$$Lambda$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/ContentSuggestionsServiceWrapper$BundleCallback;


# instance fields
.field private final arg$1:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/SuggestController;


# direct methods
.method constructor <init>(Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/SuggestController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/SuggestController$$Lambda$4;->arg$1:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/SuggestController;

    return-void
.end method


# virtual methods
.method public onResult(Landroid/os/Bundle;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/SuggestController$$Lambda$4;->arg$1:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/SuggestController;

    invoke-virtual {p0, p1}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/SuggestController;->lambda$startIfNeeded$3$SuggestController(Landroid/os/Bundle;)V

    return-void
.end method
