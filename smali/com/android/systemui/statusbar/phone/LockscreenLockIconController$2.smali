.class Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$2;
.super Ljava/lang/Object;
.source "LockscreenLockIconController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mDensity:I

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)V
    .locals 0

    .line 405
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$2;->this$0:Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 440
    iget p1, p1, Landroid/content/res/Configuration;->densityDpi:I

    .line 441
    iget v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$2;->mDensity:I

    if-eq p1, v0, :cond_0

    .line 442
    iput p1, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$2;->mDensity:I

    .line 443
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$2;->this$0:Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->access$100(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)V

    :cond_0
    return-void
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 3

    .line 420
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$2;->this$0:Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->access$600(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/LockIcon;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 424
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$2;->this$0:Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->access$700(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/LockIcon;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->keyguard_lock_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 425
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$2;->this$0:Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->access$800(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/LockIcon;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->keyguard_lock_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 427
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$2;->this$0:Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->access$900(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/LockIcon;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 428
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$2;->this$0:Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->access$1000(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;Z)V

    return-void
.end method

.method public onLocaleListChanged()V
    .locals 3

    .line 433
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$2;->this$0:Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->access$1200(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/LockIcon;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$2;->this$0:Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;

    .line 434
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->access$1100(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/LockIcon;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$string;->accessibility_unlock_button:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 433
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 435
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$2;->this$0:Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->access$1000(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;Z)V

    return-void
.end method

.method public onOverlayChanged()V
    .locals 0

    .line 415
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$2;->this$0:Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->access$500(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)V

    return-void
.end method

.method public onUiModeChanged()V
    .locals 0

    .line 410
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$2;->this$0:Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->access$500(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)V

    return-void
.end method
