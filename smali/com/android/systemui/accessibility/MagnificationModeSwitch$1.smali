.class Lcom/android/systemui/accessibility/MagnificationModeSwitch$1;
.super Landroid/view/View$AccessibilityDelegate;
.source "MagnificationModeSwitch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/accessibility/MagnificationModeSwitch;-><init>(Landroid/content/Context;Landroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/accessibility/MagnificationModeSwitch;


# direct methods
.method constructor <init>(Lcom/android/systemui/accessibility/MagnificationModeSwitch;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch$1;->this$0:Lcom/android/systemui/accessibility/MagnificationModeSwitch;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2

    .line 89
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 90
    iget-object p1, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch$1;->this$0:Lcom/android/systemui/accessibility/MagnificationModeSwitch;

    invoke-static {p1}, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->access$000(Lcom/android/systemui/accessibility/MagnificationModeSwitch;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setStateDescription(Ljava/lang/CharSequence;)V

    .line 91
    iget-object p1, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch$1;->this$0:Lcom/android/systemui/accessibility/MagnificationModeSwitch;

    invoke-static {p1}, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->access$100(Lcom/android/systemui/accessibility/MagnificationModeSwitch;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$string;->magnification_mode_switch_description:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 93
    new-instance p1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CLICK:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 94
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getId()I

    move-result v0

    iget-object p0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch$1;->this$0:Lcom/android/systemui/accessibility/MagnificationModeSwitch;

    invoke-static {p0}, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->access$100(Lcom/android/systemui/accessibility/MagnificationModeSwitch;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/systemui/R$string;->magnification_mode_switch_click_label:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v0, p0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 96
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    const/4 p0, 0x1

    .line 97
    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    .line 102
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CLICK:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getId()I

    move-result v0

    if-ne p2, v0, :cond_0

    .line 103
    iget-object p0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch$1;->this$0:Lcom/android/systemui/accessibility/MagnificationModeSwitch;

    invoke-static {p0}, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->access$200(Lcom/android/systemui/accessibility/MagnificationModeSwitch;)V

    const/4 p0, 0x1

    return p0

    .line 106
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p0

    return p0
.end method
