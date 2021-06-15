.class Lcom/android/keyguard/LockIconViewController$1;
.super Landroid/view/View$AccessibilityDelegate;
.source "LockIconViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/LockIconViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final mAccessibilityAuthenticateHint:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

.field private final mAccessibilityEnterHint:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

.field final synthetic this$0:Lcom/android/keyguard/LockIconViewController;


# direct methods
.method constructor <init>(Lcom/android/keyguard/LockIconViewController;)V
    .locals 3

    .line 250
    iput-object p1, p0, Lcom/android/keyguard/LockIconViewController$1;->this$0:Lcom/android/keyguard/LockIconViewController;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    .line 251
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 254
    invoke-static {p1}, Lcom/android/keyguard/LockIconViewController;->access$000(Lcom/android/keyguard/LockIconViewController;)Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$string;->accessibility_authenticate_hint:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    invoke-direct {v0, v2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/android/keyguard/LockIconViewController$1;->mAccessibilityAuthenticateHint:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 255
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 258
    invoke-static {p1}, Lcom/android/keyguard/LockIconViewController;->access$100(Lcom/android/keyguard/LockIconViewController;)Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/android/systemui/R$string;->accessibility_enter_hint:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/android/keyguard/LockIconViewController$1;->mAccessibilityEnterHint:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    return-void
.end method

.method private removeAllActions(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .line 270
    iget-object v0, p0, Lcom/android/keyguard/LockIconViewController$1;->mAccessibilityAuthenticateHint:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->removeAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)Z

    .line 271
    iget-object v0, p0, Lcom/android/keyguard/LockIconViewController$1;->mAccessibilityEnterHint:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->removeAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)Z

    .line 272
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_LONG_CLICK:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->removeAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)Z

    .line 273
    iget-object p0, p0, Lcom/android/keyguard/LockIconViewController$1;->this$0:Lcom/android/keyguard/LockIconViewController;

    invoke-static {p0}, Lcom/android/keyguard/LockIconViewController;->access$500(Lcom/android/keyguard/LockIconViewController;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/LockIconView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setLongClickable(Z)V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 0

    .line 260
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 261
    invoke-direct {p0, p2}, Lcom/android/keyguard/LockIconViewController$1;->removeAllActions(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 262
    iget-object p1, p0, Lcom/android/keyguard/LockIconViewController$1;->this$0:Lcom/android/keyguard/LockIconViewController;

    invoke-static {p1}, Lcom/android/keyguard/LockIconViewController;->access$200(Lcom/android/keyguard/LockIconViewController;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/keyguard/LockIconViewController$1;->this$0:Lcom/android/keyguard/LockIconViewController;

    invoke-static {p1}, Lcom/android/keyguard/LockIconViewController;->access$300(Lcom/android/keyguard/LockIconViewController;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 264
    :cond_0
    iget-object p1, p0, Lcom/android/keyguard/LockIconViewController$1;->this$0:Lcom/android/keyguard/LockIconViewController;

    invoke-static {p1}, Lcom/android/keyguard/LockIconViewController;->access$400(Lcom/android/keyguard/LockIconViewController;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 265
    iget-object p0, p0, Lcom/android/keyguard/LockIconViewController$1;->mAccessibilityEnterHint:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    goto :goto_1

    .line 263
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/keyguard/LockIconViewController$1;->mAccessibilityAuthenticateHint:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    :cond_2
    :goto_1
    return-void
.end method
