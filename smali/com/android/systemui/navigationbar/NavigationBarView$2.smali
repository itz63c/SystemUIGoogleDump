.class Lcom/android/systemui/navigationbar/NavigationBarView$2;
.super Landroid/view/View$AccessibilityDelegate;
.source "NavigationBarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/navigationbar/NavigationBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mToggleOverviewAction:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

.field final synthetic this$0:Lcom/android/systemui/navigationbar/NavigationBarView;


# direct methods
.method constructor <init>(Lcom/android/systemui/navigationbar/NavigationBarView;)V
    .locals 0

    .line 243
    iput-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBarView$2;->this$0:Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3

    .line 249
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 250
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBarView$2;->mToggleOverviewAction:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    if-nez p1, :cond_0

    .line 251
    new-instance p1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    sget v0, Lcom/android/systemui/R$id;->action_toggle_overview:I

    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBarView$2;->this$0:Lcom/android/systemui/navigationbar/NavigationBarView;

    .line 252
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$string;->quick_step_accessibility_toggle_overview:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    iput-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBarView$2;->mToggleOverviewAction:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 255
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView$2;->mToggleOverviewAction:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    .line 260
    sget v0, Lcom/android/systemui/R$id;->action_toggle_overview:I

    if-ne p2, v0, :cond_0

    .line 261
    const-class p0, Lcom/android/systemui/recents/Recents;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/recents/Recents;

    invoke-virtual {p0}, Lcom/android/systemui/recents/Recents;->toggleRecentApps()V

    const/4 p0, 0x1

    return p0

    .line 263
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p0

    return p0
.end method
