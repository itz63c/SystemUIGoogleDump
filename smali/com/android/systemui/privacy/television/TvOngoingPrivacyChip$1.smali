.class Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip$1;
.super Ljava/lang/Object;
.source "TvOngoingPrivacyChip.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->showIndicator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;


# direct methods
.method constructor <init>(Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;)V
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip$1;->this$0:Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .line 199
    iget-object v0, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip$1;->this$0:Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;

    invoke-static {v0}, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->access$000(Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return-void

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip$1;->this$0:Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;

    invoke-static {v0, v1}, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->access$102(Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;Z)Z

    .line 203
    iget-object v0, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip$1;->this$0:Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;

    invoke-static {v0}, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->access$200(Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 206
    iget-object p0, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip$1;->this$0:Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;

    invoke-static {p0}, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->access$300(Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;)V

    return-void
.end method
