.class public Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;
.super Lcom/android/systemui/util/ViewController;
.source "KeyguardQsUserSwitchController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController$KeyguardUserDetailAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/util/ViewController<",
        "Lcom/android/systemui/statusbar/phone/UserAvatarView;",
        ">;"
    }
.end annotation


# static fields
.field private static final ANIMATION_PROPERTIES:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;


# instance fields
.field private mAdapter:Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;

.field private mBarState:I

.field private final mContext:Landroid/content/Context;

.field mCurrentUser:Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;

.field private mDarkAmount:F

.field public final mDataSetObserver:Landroid/database/DataSetObserver;

.field private final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field private final mKeyguardVisibilityHelper:Lcom/android/keyguard/KeyguardVisibilityHelper;

.field private mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

.field private mResources:Landroid/content/res/Resources;

.field private final mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

.field protected final mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

.field private final mStatusBarStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

.field private final mUserDetailAdapter:Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController$KeyguardUserDetailAdapter;

.field private mUserManager:Landroid/os/UserManager;

.field private final mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;


# direct methods
.method public static synthetic $r8$lambda$JLAnqZmbLRhSKWhilvp2E4Y_AYo(Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->lambda$onInit$0(Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 60
    new-instance v0, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;-><init>()V

    const-wide/16 v1, 0x168

    .line 61
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->setDuration(J)Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->ANIMATION_PROPERTIES:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/phone/UserAvatarView;Landroid/content/Context;Landroid/content/res/Resources;Landroid/os/UserManager;Lcom/android/systemui/keyguard/ScreenLifecycle;Lcom/android/systemui/statusbar/policy/UserSwitcherController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/internal/logging/UiEventLogger;)V
    .locals 0

    .line 120
    invoke-direct {p0, p1}, Lcom/android/systemui/util/ViewController;-><init>(Landroid/view/View;)V

    .line 80
    new-instance p1, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController$1;-><init>(Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mStatusBarStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

    .line 174
    new-instance p1, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController$3;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController$3;-><init>(Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 122
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mContext:Landroid/content/Context;

    .line 123
    iput-object p3, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mResources:Landroid/content/res/Resources;

    .line 124
    iput-object p4, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mUserManager:Landroid/os/UserManager;

    .line 125
    iput-object p5, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    .line 126
    iput-object p6, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    .line 127
    iput-object p7, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 128
    iput-object p8, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 129
    new-instance p1, Lcom/android/keyguard/KeyguardVisibilityHelper;

    iget-object p3, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    invoke-direct {p1, p3, p7, p9}, Lcom/android/keyguard/KeyguardVisibilityHelper;-><init>(Landroid/view/View;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/statusbar/phone/DozeParameters;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mKeyguardVisibilityHelper:Lcom/android/keyguard/KeyguardVisibilityHelper;

    .line 131
    new-instance p1, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController$KeyguardUserDetailAdapter;

    invoke-direct {p1, p0, p6, p2, p10}, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController$KeyguardUserDetailAdapter;-><init>(Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;Lcom/android/systemui/statusbar/policy/UserSwitcherController;Landroid/content/Context;Lcom/android/internal/logging/UiEventLogger;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mUserDetailAdapter:Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController$KeyguardUserDetailAdapter;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;)Lcom/android/systemui/statusbar/policy/KeyguardStateController;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;)I
    .locals 0

    .line 55
    iget p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mBarState:I

    return p0
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;I)I
    .locals 0

    .line 55
    iput p1, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mBarState:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;F)V
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->setDarkAmount(F)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;Z)V
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->updateView(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;)Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    return-object p0
.end method

.method private isListAnimating()Z
    .locals 0

    .line 312
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mKeyguardVisibilityHelper:Lcom/android/keyguard/KeyguardVisibilityHelper;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardVisibilityHelper;->isVisibilityAnimating()Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$onInit$0(Landroid/view/View;)V
    .locals 0

    .line 147
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->isListAnimating()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 152
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->openQsUserPanel()V

    return-void
.end method

.method private openQsUserPanel()V
    .locals 1

    .line 316
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mUserDetailAdapter:Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController$KeyguardUserDetailAdapter;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->expandWithQsDetail(Lcom/android/systemui/plugins/qs/DetailAdapter;)V

    return-void
.end method

.method private setDarkAmount(F)V
    .locals 3

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 304
    :goto_0
    iget v2, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mDarkAmount:F

    cmpl-float v2, p1, v2

    if-nez v2, :cond_1

    return-void

    .line 307
    :cond_1
    iput p1, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mDarkAmount:F

    .line 308
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/statusbar/phone/UserAvatarView;

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private updateCurrentUser()Z
    .locals 6

    .line 185
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mCurrentUser:Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;

    const/4 v1, 0x0

    .line 186
    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mCurrentUser:Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;

    const/4 v1, 0x0

    move v2, v1

    .line 187
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mAdapter:Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;->getCount()I

    move-result v3

    const/4 v4, 0x1

    if-ge v2, v3, :cond_1

    .line 188
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mAdapter:Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;->getItem(I)Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;

    move-result-object v3

    .line 189
    iget-boolean v5, v3, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isCurrent:Z

    if-eqz v5, :cond_0

    .line 190
    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mCurrentUser:Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;

    .line 191
    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/2addr p0, v4

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 194
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mCurrentUser:Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;

    if-nez p0, :cond_2

    if-eqz v0, :cond_2

    move v1, v4

    :cond_2
    return v1
.end method

.method private updateView(Z)V
    .locals 5

    .line 201
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->updateCurrentUser()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    return-void

    .line 205
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mCurrentUser:Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;

    if-nez p1, :cond_1

    .line 206
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/statusbar/phone/UserAvatarView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 210
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p1, Lcom/android/systemui/statusbar/phone/UserAvatarView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 212
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mCurrentUser:Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;

    iget-object p1, p1, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->info:Landroid/content/pm/UserInfo;

    iget-object p1, p1, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    .line 215
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    .line 216
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/systemui/R$string;->accessibility_quick_settings_user:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v0

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    move-object p1, v2

    .line 221
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/statusbar/phone/UserAvatarView;

    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 222
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/statusbar/phone/UserAvatarView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 225
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mCurrentUser:Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;

    iget-object v0, p1, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->picture:Landroid/graphics/Bitmap;

    if-nez v0, :cond_4

    .line 226
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/statusbar/phone/UserAvatarView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->getDrawable(Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mCurrentUser:Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;

    .line 227
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->resolveId()I

    move-result p0

    .line 226
    invoke-virtual {v0, p1, p0}, Lcom/android/systemui/statusbar/phone/UserAvatarView;->setDrawableWithBadge(Landroid/graphics/drawable/Drawable;I)V

    goto :goto_2

    .line 229
    :cond_4
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/android/systemui/R$dimen;->kg_framed_avatar_size:I

    .line 230
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    .line 231
    new-instance v0, Lcom/android/settingslib/drawable/CircleFramedDrawable;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mCurrentUser:Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->picture:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1, p1}, Lcom/android/settingslib/drawable/CircleFramedDrawable;-><init>(Landroid/graphics/Bitmap;I)V

    .line 233
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mCurrentUser:Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;

    iget-boolean p1, p1, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isSwitchToEnabled:Z

    if-eqz p1, :cond_5

    goto :goto_1

    .line 234
    :cond_5
    invoke-static {}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;->getDisabledUserAvatarColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v2

    .line 232
    :goto_1
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 235
    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p1, Lcom/android/systemui/statusbar/phone/UserAvatarView;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mCurrentUser:Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->info:Landroid/content/pm/UserInfo;

    iget p0, p0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p1, v0, p0}, Lcom/android/systemui/statusbar/phone/UserAvatarView;->setDrawableWithBadge(Landroid/graphics/drawable/Drawable;I)V

    :goto_2
    return-void
.end method


# virtual methods
.method getDrawable(Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 241
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isCurrent:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isGuest:Z

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$drawable;->ic_avatar_guest_user:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;->getIconDrawable(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 248
    :goto_0
    iget-boolean p1, p1, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isSwitchToEnabled:Z

    if-eqz p1, :cond_1

    .line 249
    sget p1, Lcom/android/systemui/R$color;->kg_user_switcher_avatar_icon_color:I

    goto :goto_1

    .line 251
    :cond_1
    sget p1, Lcom/android/systemui/R$color;->kg_user_switcher_restricted_avatar_icon_color:I

    .line 253
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mResources:Landroid/content/res/Resources;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 255
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/systemui/R$drawable;->kg_bg_avatar:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 256
    new-instance p1, Landroid/graphics/drawable/LayerDrawable;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object v0, v1, p0

    invoke-direct {p1, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    return-object p1
.end method

.method public getUserIconHeight()I
    .locals 0

    .line 264
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/statusbar/phone/UserAvatarView;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    return p0
.end method

.method protected onInit()V
    .locals 2

    .line 137
    invoke-super {p0}, Lcom/android/systemui/util/ViewController;->onInit()V

    .line 139
    new-instance v0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController$2;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController$2;-><init>(Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;Lcom/android/systemui/statusbar/policy/UserSwitcherController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mAdapter:Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;

    .line 146
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/statusbar/phone/UserAvatarView;

    new-instance v1, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController-$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController-$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x1

    .line 155
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->updateView(Z)V

    return-void
.end method

.method protected onViewAttached()V
    .locals 2

    .line 161
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mAdapter:Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Landroid/widget/BaseAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 162
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 163
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mStatusBarStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    return-void
.end method

.method protected onViewDetached()V
    .locals 2

    .line 170
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mAdapter:Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Landroid/widget/BaseAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 171
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mStatusBarStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->removeCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    return-void
.end method

.method public setAlpha(F)V
    .locals 1

    .line 292
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mKeyguardVisibilityHelper:Lcom/android/keyguard/KeyguardVisibilityHelper;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardVisibilityHelper;->isVisibilityAnimating()Z

    move-result v0

    if-nez v0, :cond_0

    .line 293
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/statusbar/phone/UserAvatarView;

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public setKeyguardQsUserSwitchVisibility(IZZI)V
    .locals 0

    .line 275
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mKeyguardVisibilityHelper:Lcom/android/keyguard/KeyguardVisibilityHelper;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/keyguard/KeyguardVisibilityHelper;->setViewVisibility(IZZI)V

    return-void
.end method

.method public setNotificationPanelViewController(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V
    .locals 0

    .line 321
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    return-void
.end method

.method public updatePosition(IIZ)V
    .locals 3

    .line 283
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/statusbar/phone/UserAvatarView;

    sget-object v1, Lcom/android/systemui/statusbar/notification/AnimatableProperty;->Y:Lcom/android/systemui/statusbar/notification/AnimatableProperty;

    int-to-float p2, p2

    sget-object v2, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->ANIMATION_PROPERTIES:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    invoke-static {v0, v1, p2, v2, p3}, Lcom/android/systemui/statusbar/notification/PropertyAnimator;->setProperty(Landroid/view/View;Lcom/android/systemui/statusbar/notification/AnimatableProperty;FLcom/android/systemui/statusbar/notification/stack/AnimationProperties;Z)V

    .line 284
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/statusbar/phone/UserAvatarView;

    sget-object p2, Lcom/android/systemui/statusbar/notification/AnimatableProperty;->TRANSLATION_X:Lcom/android/systemui/statusbar/notification/AnimatableProperty;

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    neg-int p1, p1

    int-to-float p1, p1

    invoke-static {p0, p2, p1, v2, p3}, Lcom/android/systemui/statusbar/notification/PropertyAnimator;->setProperty(Landroid/view/View;Lcom/android/systemui/statusbar/notification/AnimatableProperty;FLcom/android/systemui/statusbar/notification/stack/AnimationProperties;Z)V

    return-void
.end method
