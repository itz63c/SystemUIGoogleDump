.class public final Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$ActionMenuItem;
.super Ljava/lang/Object;
.source "FeedbackParcelables.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$ActionMenuItem$ActionMenuItemDisplayMode;
    }
.end annotation


# instance fields
.field private actionIntent:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/SuggestParcelables$IntentInfo;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private displayMode:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$ActionMenuItem$ActionMenuItemDisplayMode;

.field private displayName:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private id:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private invokeRankIndex:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 749
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public writeToBundle()Landroid/os/Bundle;
    .locals 4

    .line 829
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 830
    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$ActionMenuItem;->id:Ljava/lang/String;

    const-string v2, "id"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 831
    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$ActionMenuItem;->displayName:Ljava/lang/String;

    const-string v2, "displayName"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 832
    iget v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$ActionMenuItem;->invokeRankIndex:I

    const-string v2, "invokeRankIndex"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 833
    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$ActionMenuItem;->displayMode:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$ActionMenuItem$ActionMenuItemDisplayMode;

    const/4 v2, 0x0

    const-string v3, "displayMode"

    if-nez v1, :cond_0

    .line 834
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 836
    :cond_0
    invoke-virtual {v1}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$ActionMenuItem$ActionMenuItemDisplayMode;->writeToBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 838
    :goto_0
    iget-object p0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$ActionMenuItem;->actionIntent:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/SuggestParcelables$IntentInfo;

    const-string v1, "actionIntent"

    if-nez p0, :cond_1

    .line 839
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1

    .line 841
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/SuggestParcelables$IntentInfo;->writeToBundle()Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :goto_1
    return-object v0
.end method
