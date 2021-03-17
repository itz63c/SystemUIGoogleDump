.class Lcom/android/systemui/qs/QSPanelController$2;
.super Ljava/lang/Object;
.source "QSPanelController.java"

# interfaces
.implements Lcom/android/systemui/tuner/TunerService$Tunable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSPanelController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSPanelController;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QSPanelController;)V
    .locals 0

    .line 328
    iput-object p1, p0, Lcom/android/systemui/qs/QSPanelController$2;->this$0:Lcom/android/systemui/qs/QSPanelController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "sysui_remove_labels"

    .line 331
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 332
    iget-object p1, p0, Lcom/android/systemui/qs/QSPanelController$2;->this$0:Lcom/android/systemui/qs/QSPanelController;

    invoke-static {p1}, Lcom/android/systemui/qs/QSPanelController;->access$400(Lcom/android/systemui/qs/QSPanelController;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_2

    const-string p1, "0"

    .line 333
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    .line 334
    :goto_1
    iget-object p2, p0, Lcom/android/systemui/qs/QSPanelController$2;->this$0:Lcom/android/systemui/qs/QSPanelController;

    iget-boolean v0, p2, Lcom/android/systemui/qs/QSPanelControllerBase;->mShowLabels:Z

    if-ne v0, p1, :cond_3

    return-void

    .line 335
    :cond_3
    iput-boolean p1, p2, Lcom/android/systemui/qs/QSPanelControllerBase;->mShowLabels:Z

    .line 336
    iget-object p1, p2, Lcom/android/systemui/qs/QSPanelControllerBase;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;

    .line 337
    iget-object p2, p2, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanelController$2;->this$0:Lcom/android/systemui/qs/QSPanelController;

    iget-boolean v0, v0, Lcom/android/systemui/qs/QSPanelControllerBase;->mShowLabels:Z

    invoke-virtual {p2, v0}, Lcom/android/systemui/plugins/qs/QSTileView;->setShowLabels(Z)V

    goto :goto_2

    .line 339
    :cond_4
    iget-object p1, p0, Lcom/android/systemui/qs/QSPanelController$2;->this$0:Lcom/android/systemui/qs/QSPanelController;

    invoke-virtual {p1}, Lcom/android/systemui/qs/QSPanelControllerBase;->getTileLayout()Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/qs/QSPanelController$2;->this$0:Lcom/android/systemui/qs/QSPanelController;

    iget-boolean p2, p2, Lcom/android/systemui/qs/QSPanelControllerBase;->mShowLabels:Z

    invoke-interface {p1, p2}, Lcom/android/systemui/qs/QSPanel$QSTileLayout;->setShowLabels(Z)V

    .line 340
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanelController$2;->this$0:Lcom/android/systemui/qs/QSPanelController;

    invoke-static {p0}, Lcom/android/systemui/qs/QSPanelController;->access$500(Lcom/android/systemui/qs/QSPanelController;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    :cond_5
    return-void
.end method
