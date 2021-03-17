.class Lcom/android/systemui/qs/customize/QSCustomizerController$1;
.super Ljava/lang/Object;
.source "QSCustomizerController.java"

# interfaces
.implements Landroid/widget/Toolbar$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/customize/QSCustomizerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/customize/QSCustomizerController;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/customize/QSCustomizerController;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/android/systemui/qs/customize/QSCustomizerController$1;->this$0:Lcom/android/systemui/qs/customize/QSCustomizerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 4

    .line 76
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 77
    iget-object p1, p0, Lcom/android/systemui/qs/customize/QSCustomizerController$1;->this$0:Lcom/android/systemui/qs/customize/QSCustomizerController;

    invoke-static {p1}, Lcom/android/systemui/qs/customize/QSCustomizerController;->access$000(Lcom/android/systemui/qs/customize/QSCustomizerController;)Lcom/android/internal/logging/UiEventLogger;

    move-result-object p1

    sget-object v0, Lcom/android/systemui/qs/QSEditEvent;->QS_EDIT_RESET:Lcom/android/systemui/qs/QSEditEvent;

    invoke-interface {p1, v0}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 78
    iget-object p0, p0, Lcom/android/systemui/qs/customize/QSCustomizerController$1;->this$0:Lcom/android/systemui/qs/customize/QSCustomizerController;

    invoke-static {p0}, Lcom/android/systemui/qs/customize/QSCustomizerController;->access$100(Lcom/android/systemui/qs/customize/QSCustomizerController;)V

    goto :goto_1

    .line 79
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    .line 80
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v0

    xor-int/2addr v0, v2

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 81
    iget-object p0, p0, Lcom/android/systemui/qs/customize/QSCustomizerController$1;->this$0:Lcom/android/systemui/qs/customize/QSCustomizerController;

    invoke-static {p0}, Lcom/android/systemui/qs/customize/QSCustomizerController;->access$200(Lcom/android/systemui/qs/customize/QSCustomizerController;)Lcom/android/systemui/tuner/TunerService;

    move-result-object p0

    .line 82
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "1"

    goto :goto_0

    :cond_1
    const-string p1, "0"

    :goto_0
    const-string v0, "sysui_remove_labels"

    .line 81
    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/tuner/TunerService;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return v1
.end method
