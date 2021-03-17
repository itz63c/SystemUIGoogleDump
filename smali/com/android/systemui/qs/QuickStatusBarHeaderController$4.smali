.class Lcom/android/systemui/qs/QuickStatusBarHeaderController$4;
.super Ljava/lang/Object;
.source "QuickStatusBarHeaderController.java"

# interfaces
.implements Lcom/android/systemui/privacy/PrivacyItemController$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QuickStatusBarHeaderController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QuickStatusBarHeaderController;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QuickStatusBarHeaderController;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController$4;->this$0:Lcom/android/systemui/qs/QuickStatusBarHeaderController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private update()V
    .locals 2

    .line 178
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController$4;->this$0:Lcom/android/systemui/qs/QuickStatusBarHeaderController;

    invoke-static {v0}, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->access$1300(Lcom/android/systemui/qs/QuickStatusBarHeaderController;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QuickStatusBarHeader;

    sget v1, Lcom/android/systemui/R$id;->statusIcons:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;

    .line 179
    iget-object v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController$4;->this$0:Lcom/android/systemui/qs/QuickStatusBarHeaderController;

    invoke-static {v1}, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->access$1400(Lcom/android/systemui/qs/QuickStatusBarHeaderController;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->setIgnoredSlots(Ljava/util/List;)V

    .line 180
    iget-object p0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController$4;->this$0:Lcom/android/systemui/qs/QuickStatusBarHeaderController;

    invoke-static {p0}, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->access$800(Lcom/android/systemui/qs/QuickStatusBarHeaderController;)Lcom/android/systemui/privacy/OngoingPrivacyChip;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/privacy/OngoingPrivacyChip;->getPrivacyList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p0, v0}, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->access$900(Lcom/android/systemui/qs/QuickStatusBarHeaderController;Z)V

    return-void
.end method


# virtual methods
.method public onFlagAllChanged(Z)V
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController$4;->this$0:Lcom/android/systemui/qs/QuickStatusBarHeaderController;

    invoke-static {v0}, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->access$1000(Lcom/android/systemui/qs/QuickStatusBarHeaderController;)Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 156
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController$4;->this$0:Lcom/android/systemui/qs/QuickStatusBarHeaderController;

    invoke-static {v0, p1}, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->access$1002(Lcom/android/systemui/qs/QuickStatusBarHeaderController;Z)Z

    .line 157
    invoke-direct {p0}, Lcom/android/systemui/qs/QuickStatusBarHeaderController$4;->update()V

    :cond_0
    return-void
.end method

.method public onFlagLocationChanged(Z)V
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController$4;->this$0:Lcom/android/systemui/qs/QuickStatusBarHeaderController;

    invoke-static {v0}, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->access$1200(Lcom/android/systemui/qs/QuickStatusBarHeaderController;)Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 172
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController$4;->this$0:Lcom/android/systemui/qs/QuickStatusBarHeaderController;

    invoke-static {v0, p1}, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->access$1202(Lcom/android/systemui/qs/QuickStatusBarHeaderController;Z)Z

    .line 173
    invoke-direct {p0}, Lcom/android/systemui/qs/QuickStatusBarHeaderController$4;->update()V

    :cond_0
    return-void
.end method

.method public onFlagMicCameraChanged(Z)V
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController$4;->this$0:Lcom/android/systemui/qs/QuickStatusBarHeaderController;

    invoke-static {v0}, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->access$1100(Lcom/android/systemui/qs/QuickStatusBarHeaderController;)Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 164
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController$4;->this$0:Lcom/android/systemui/qs/QuickStatusBarHeaderController;

    invoke-static {v0, p1}, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->access$1102(Lcom/android/systemui/qs/QuickStatusBarHeaderController;Z)Z

    .line 165
    invoke-direct {p0}, Lcom/android/systemui/qs/QuickStatusBarHeaderController$4;->update()V

    :cond_0
    return-void
.end method

.method public onPrivacyItemsChanged(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/privacy/PrivacyItem;",
            ">;)V"
        }
    .end annotation

    .line 149
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController$4;->this$0:Lcom/android/systemui/qs/QuickStatusBarHeaderController;

    invoke-static {v0}, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->access$800(Lcom/android/systemui/qs/QuickStatusBarHeaderController;)Lcom/android/systemui/privacy/OngoingPrivacyChip;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/privacy/OngoingPrivacyChip;->setPrivacyList(Ljava/util/List;)V

    .line 150
    iget-object p0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController$4;->this$0:Lcom/android/systemui/qs/QuickStatusBarHeaderController;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p0, p1}, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->access$900(Lcom/android/systemui/qs/QuickStatusBarHeaderController;Z)V

    return-void
.end method
