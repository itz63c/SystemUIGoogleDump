.class public Lcom/android/systemui/statusbar/phone/MultiUserSwitch;
.super Landroid/widget/FrameLayout;
.source "MultiUserSwitch.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field protected mQSDetailDisplayer:Lcom/android/systemui/qs/QSDetailDisplayer;

.field private mUserListener:Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;

.field final mUserManager:Landroid/os/UserManager;

.field protected mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;


# direct methods
.method public static synthetic $r8$lambda$OoJlRHgkxdixw3YqLDL7khaDwo4(Lcom/android/systemui/statusbar/phone/MultiUserSwitch;)Ljava/lang/Boolean;
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->lambda$isMultiUserEnabled$0()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$xeoPsF_lUhMpHBhC8W8Zz7y6NHg(Lcom/android/systemui/statusbar/phone/MultiUserSwitch;)Ljava/lang/Boolean;
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->lambda$refreshContentDescription$1()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->mUserManager:Landroid/os/UserManager;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/MultiUserSwitch;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->refreshContentDescription()V

    return-void
.end method

.method private synthetic lambda$isMultiUserEnabled$0()Ljava/lang/Boolean;
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->mUserManager:Landroid/os/UserManager;

    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 88
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/systemui/R$bool;->qs_show_user_switcher_for_single_user:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    .line 87
    invoke-virtual {v0, p0}, Landroid/os/UserManager;->isUserSwitcherEnabled(Z)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$refreshContentDescription$1()Ljava/lang/Boolean;
    .locals 0

    .line 135
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p0}, Landroid/os/UserManager;->isUserSwitcherEnabled()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private refreshContentDescription()V
    .locals 5

    .line 135
    new-instance v0, Lcom/android/systemui/statusbar/phone/MultiUserSwitch-$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch-$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/phone/MultiUserSwitch;)V

    invoke-static {v0}, Lcom/android/systemui/DejankUtils;->whitelistIpcs(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    if-eqz v0, :cond_0

    .line 137
    iget-object v2, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->getCurrentUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 142
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 143
    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$string;->accessibility_quick_settings_user:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 148
    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 149
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method private registerListener()V
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->isUserSwitcherEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->mUserListener:Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;

    if-nez v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    if-eqz v0, :cond_0

    .line 96
    new-instance v1, Lcom/android/systemui/statusbar/phone/MultiUserSwitch$1;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch$1;-><init>(Lcom/android/systemui/statusbar/phone/MultiUserSwitch;Lcom/android/systemui/statusbar/policy/UserSwitcherController;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->mUserListener:Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;

    .line 107
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->refreshContentDescription()V

    :cond_0
    return-void
.end method


# virtual methods
.method protected getUserDetailAdapter()Lcom/android/systemui/plugins/qs/DetailAdapter;
    .locals 0

    .line 171
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mUserDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    return-object p0
.end method

.method public hasOverlappingRendering()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isMultiUserEnabled()Z
    .locals 1

    .line 87
    new-instance v0, Lcom/android/systemui/statusbar/phone/MultiUserSwitch-$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch-$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/phone/MultiUserSwitch;)V

    invoke-static {v0}, Lcom/android/systemui/DejankUtils;->whitelistIpcs(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 114
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->mQSDetailDisplayer:Lcom/android/systemui/qs/QSDetailDisplayer;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    if-eqz p1, :cond_1

    .line 115
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p1

    const/4 v0, 0x0

    if-lez p1, :cond_0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, p0

    :goto_0
    const/4 v1, 0x2

    new-array v2, v1, [I

    .line 118
    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 119
    aget v3, v2, v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/2addr v4, v1

    add-int/2addr v3, v4

    aput v3, v2, v0

    const/4 v3, 0x1

    .line 120
    aget v4, v2, v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    div-int/2addr p1, v1

    add-int/2addr v4, p1

    aput v4, v2, v3

    .line 122
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->mQSDetailDisplayer:Lcom/android/systemui/qs/QSDetailDisplayer;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->getUserDetailAdapter()Lcom/android/systemui/plugins/qs/DetailAdapter;

    move-result-object p0

    aget v0, v2, v0

    aget v1, v2, v3

    invoke-virtual {p1, p0, v0, v1}, Lcom/android/systemui/qs/QSDetailDisplayer;->showDetailAdapter(Lcom/android/systemui/plugins/qs/DetailAdapter;II)V

    :cond_1
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 60
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 61
    invoke-virtual {p0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->refreshContentDescription()V

    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    .line 155
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 156
    const-class p0, Landroid/widget/Button;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 0

    .line 161
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 162
    const-class p0, Landroid/widget/Button;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setClickable(Z)V
    .locals 0

    .line 128
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 129
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->refreshContentDescription()V

    return-void
.end method

.method public setQSDetailDisplayer(Lcom/android/systemui/qs/QSDetailDisplayer;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->mQSDetailDisplayer:Lcom/android/systemui/qs/QSDetailDisplayer;

    .line 68
    const-class p1, Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->setUserSwitcherController(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)V

    return-void
.end method

.method public setUserSwitcherController(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    .line 81
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->registerListener()V

    .line 82
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->refreshContentDescription()V

    return-void
.end method
