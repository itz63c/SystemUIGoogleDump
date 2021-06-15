.class final synthetic Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/ContentSuggestionsServiceWrapperImpl$$Lambda$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/app/contentsuggestions/ContentSuggestionsManager$ClassificationsCallback;


# instance fields
.field private final arg$1:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/ContentSuggestionsServiceWrapperImpl$BundleCallbackWrapper;


# direct methods
.method constructor <init>(Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/ContentSuggestionsServiceWrapperImpl$BundleCallbackWrapper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/ContentSuggestionsServiceWrapperImpl$$Lambda$2;->arg$1:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/ContentSuggestionsServiceWrapperImpl$BundleCallbackWrapper;

    return-void
.end method


# virtual methods
.method public onContentClassificationsAvailable(ILjava/util/List;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/ContentSuggestionsServiceWrapperImpl$$Lambda$2;->arg$1:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/ContentSuggestionsServiceWrapperImpl$BundleCallbackWrapper;

    invoke-static {p0, p1, p2}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/ContentSuggestionsServiceWrapperImpl;->lambda$classifyContentSelections$1$ContentSuggestionsServiceWrapperImpl(Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/ContentSuggestionsServiceWrapperImpl$BundleCallbackWrapper;ILjava/util/List;)V

    return-void
.end method
