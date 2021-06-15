.class public Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;
.super Ljava/lang/Object;
.source "AccessibilityFloatingMenuController.java"

# interfaces
.implements Lcom/android/systemui/accessibility/AccessibilityButtonModeObserver$ModeChangedListener;
.implements Lcom/android/systemui/accessibility/AccessibilityButtonTargetsObserver$TargetsChangedListener;
.implements Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;


# instance fields
.field private final mAccessibilityButtonModeObserver:Lcom/android/systemui/accessibility/AccessibilityButtonModeObserver;

.field private final mAccessibilityButtonTargetsObserver:Lcom/android/systemui/accessibility/AccessibilityButtonTargetsObserver;

.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mBtnMode:I

.field private mBtnTargets:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field mFloatingMenu:Lcom/android/systemui/accessibility/floatingmenu/IAccessibilityFloatingMenu;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/accessibility/AccessibilityButtonTargetsObserver;Lcom/android/systemui/accessibility/AccessibilityButtonModeObserver;)V
    .locals 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;->mContext:Landroid/content/Context;

    .line 58
    iput-object p2, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;->mAccessibilityButtonTargetsObserver:Lcom/android/systemui/accessibility/AccessibilityButtonTargetsObserver;

    .line 59
    iput-object p3, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;->mAccessibilityButtonModeObserver:Lcom/android/systemui/accessibility/AccessibilityButtonModeObserver;

    .line 60
    const-class v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    iput-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 62
    invoke-virtual {p3, p0}, Lcom/android/systemui/accessibility/SecureSettingsContentObserver;->addListener(Ljava/lang/Object;)V

    .line 63
    invoke-virtual {p2, p0}, Lcom/android/systemui/accessibility/SecureSettingsContentObserver;->addListener(Ljava/lang/Object;)V

    .line 64
    invoke-virtual {p3}, Lcom/android/systemui/accessibility/AccessibilityButtonModeObserver;->getCurrentAccessibilityButtonMode()I

    move-result p3

    iput p3, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;->mBtnMode:I

    .line 65
    invoke-virtual {p2}, Lcom/android/systemui/accessibility/AccessibilityButtonTargetsObserver;->getCurrentAccessibilityButtonTargets()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;->mBtnTargets:Ljava/lang/String;

    .line 70
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityManager;->addAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;)Z

    .line 71
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 72
    iget p2, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;->mBtnMode:I

    iget-object p3, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;->mBtnTargets:Ljava/lang/String;

    invoke-direct {p0, p2, p3}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;->handleFloatingMenuVisibility(ILjava/lang/String;)V

    .line 73
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityManager;->removeAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;)Z

    :cond_0
    return-void
.end method

.method private destroyFloatingMenu()V
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;->mFloatingMenu:Lcom/android/systemui/accessibility/floatingmenu/IAccessibilityFloatingMenu;

    if-nez v0, :cond_0

    return-void

    .line 142
    :cond_0
    invoke-interface {v0}, Lcom/android/systemui/accessibility/floatingmenu/IAccessibilityFloatingMenu;->hide()V

    const/4 v0, 0x0

    .line 143
    iput-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;->mFloatingMenu:Lcom/android/systemui/accessibility/floatingmenu/IAccessibilityFloatingMenu;

    return-void
.end method

.method private handleFloatingMenuVisibility(ILjava/lang/String;)V
    .locals 0

    .line 118
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;->shouldShowFloatingMenu(ILjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 119
    invoke-direct {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;->showFloatingMenu()V

    goto :goto_0

    .line 121
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;->destroyFloatingMenu()V

    :goto_0
    return-void
.end method

.method private shouldShowFloatingMenu(ILjava/lang/String;)Z
    .locals 0

    const/4 p0, 0x1

    if-ne p1, p0, :cond_0

    .line 126
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private showFloatingMenu()V
    .locals 2

    .line 130
    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;->mFloatingMenu:Lcom/android/systemui/accessibility/floatingmenu/IAccessibilityFloatingMenu;

    if-nez v0, :cond_0

    .line 131
    new-instance v0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu;

    iget-object v1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;->mFloatingMenu:Lcom/android/systemui/accessibility/floatingmenu/IAccessibilityFloatingMenu;

    .line 134
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;->mFloatingMenu:Lcom/android/systemui/accessibility/floatingmenu/IAccessibilityFloatingMenu;

    invoke-interface {p0}, Lcom/android/systemui/accessibility/floatingmenu/IAccessibilityFloatingMenu;->show()V

    return-void
.end method


# virtual methods
.method public onAccessibilityButtonModeChanged(I)V
    .locals 1

    .line 84
    iput p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;->mBtnMode:I

    .line 85
    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;->mBtnTargets:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;->handleFloatingMenuVisibility(ILjava/lang/String;)V

    return-void
.end method

.method public onAccessibilityButtonTargetsChanged(Ljava/lang/String;)V
    .locals 1

    .line 96
    iput-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;->mBtnTargets:Ljava/lang/String;

    .line 97
    iget v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;->mBtnMode:I

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;->handleFloatingMenuVisibility(ILjava/lang/String;)V

    return-void
.end method

.method public onAccessibilityStateChanged(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 111
    iget p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;->mBtnMode:I

    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;->mBtnTargets:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;->handleFloatingMenuVisibility(ILjava/lang/String;)V

    .line 114
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityManager;->removeAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;)Z

    return-void
.end method
