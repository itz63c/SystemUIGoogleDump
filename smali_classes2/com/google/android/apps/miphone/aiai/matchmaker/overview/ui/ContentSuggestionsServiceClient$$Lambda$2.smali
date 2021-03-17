.class final synthetic Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/ContentSuggestionsServiceClient$$Lambda$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field private final arg$1:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/ContentSuggestionsServiceClient;

.field private final arg$2:Ljava/lang/String;

.field private final arg$3:Ljava/lang/String;

.field private final arg$4:Z


# direct methods
.method constructor <init>(Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/ContentSuggestionsServiceClient;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/ContentSuggestionsServiceClient$$Lambda$2;->arg$1:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/ContentSuggestionsServiceClient;

    iput-object p2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/ContentSuggestionsServiceClient$$Lambda$2;->arg$2:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/ContentSuggestionsServiceClient$$Lambda$2;->arg$3:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/ContentSuggestionsServiceClient$$Lambda$2;->arg$4:Z

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/ContentSuggestionsServiceClient$$Lambda$2;->arg$1:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/ContentSuggestionsServiceClient;

    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/ContentSuggestionsServiceClient$$Lambda$2;->arg$2:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/ContentSuggestionsServiceClient$$Lambda$2;->arg$3:Ljava/lang/String;

    iget-boolean p0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/ContentSuggestionsServiceClient$$Lambda$2;->arg$4:Z

    invoke-virtual {v0, v1, v2, p0}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/ContentSuggestionsServiceClient;->lambda$notifyAction$2$ContentSuggestionsServiceClient(Ljava/lang/String;Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method
