.class public final Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$ScreenshotActionFeedback;
.super Ljava/lang/Object;
.source "FeedbackParcelables.java"


# instance fields
.field private actionType:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private hasActionType:Z

.field private hasIsSmartActions:Z

.field private isSmartActions:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 387
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$ScreenshotActionFeedback;
    .locals 1

    .line 394
    new-instance v0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$ScreenshotActionFeedback;

    invoke-direct {v0}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$ScreenshotActionFeedback;-><init>()V

    return-object v0
.end method


# virtual methods
.method public setActionType(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "actionType"
        }
    .end annotation

    .line 398
    iput-object p1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$ScreenshotActionFeedback;->actionType:Ljava/lang/String;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 399
    :goto_0
    iput-boolean p1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$ScreenshotActionFeedback;->hasActionType:Z

    return-void
.end method

.method public setIsSmartActions(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isSmartActions"
        }
    .end annotation

    .line 412
    iput-boolean p1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$ScreenshotActionFeedback;->isSmartActions:Z

    const/4 p1, 0x1

    .line 413
    iput-boolean p1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$ScreenshotActionFeedback;->hasIsSmartActions:Z

    return-void
.end method

.method public writeToBundle()Landroid/os/Bundle;
    .locals 3

    .line 425
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 426
    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$ScreenshotActionFeedback;->actionType:Ljava/lang/String;

    const-string v2, "actionType"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    iget-boolean p0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$ScreenshotActionFeedback;->isSmartActions:Z

    const-string v1, "isSmartActions"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method
