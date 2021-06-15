.class public Lcom/google/android/systemui/dreamliner/DockIndicationController;
.super Ljava/lang/Object;
.source "DockIndicationController.java"

# interfaces
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnAttachStateChangeListener;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/systemui/dreamliner/DockIndicationController$PhotoAnimationListener;
    }
.end annotation


# static fields
.field static final ACTION_ASSISTANT_POODLE:Ljava/lang/String; = "com.google.android.systemui.dreamliner.ASSISTANT_POODLE"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final KEYGUARD_INDICATION_TIMEOUT_MILLIS:J

.field private static final PROMO_SHOWING_TIME_MILLIS:J


# instance fields
.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private final mContext:Landroid/content/Context;

.field private final mDisableLiveRegionRunnable:Ljava/lang/Runnable;

.field mDockPromo:Landroid/widget/FrameLayout;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field mDockedTopIcon:Landroid/widget/ImageView;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mDocking:Z

.field private mDozing:Z

.field private final mHidePromoAnimation:Landroid/view/animation/Animation;

.field private final mHidePromoRunnable:Ljava/lang/Runnable;

.field mIconViewsValidated:Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

.field private mPromoText:Landroid/widget/TextView;

.field private mShowPromo:Z

.field private final mShowPromoAnimation:Landroid/view/animation/Animation;

.field private mShowPromoTimes:I

.field private final mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private mTopIconShowing:Z

.field private mTopIndicationView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;


# direct methods
.method public static synthetic $r8$lambda$EtEREWukZO67FWKjk6W4L_zNvnc(Lcom/google/android/systemui/dreamliner/DockIndicationController;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/systemui/dreamliner/DockIndicationController;->hidePromo()V

    return-void
.end method

.method public static synthetic $r8$lambda$fgigC0tWlCjIm6J3ADubxDvwSnQ(Lcom/google/android/systemui/dreamliner/DockIndicationController;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/systemui/dreamliner/DockIndicationController;->disableLiveRegion()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 50
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    sput-wide v1, Lcom/google/android/systemui/dreamliner/DockIndicationController;->PROMO_SHOWING_TIME_MILLIS:J

    const-wide/16 v1, 0xf

    .line 52
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/systemui/dreamliner/DockIndicationController;->KEYGUARD_INDICATION_TIMEOUT_MILLIS:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/KeyguardIndicationController;Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Lcom/google/android/systemui/dreamliner/DockIndicationController;->mContext:Landroid/content/Context;

    .line 86
    iput-object p3, p0, Lcom/google/android/systemui/dreamliner/DockIndicationController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 87
    iput-object p2, p0, Lcom/google/android/systemui/dreamliner/DockIndicationController;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    .line 88
    const-class p2, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 89
    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 90
    invoke-interface {p2, p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 91
    new-instance p2, Lcom/google/android/systemui/dreamliner/DockIndicationController$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/google/android/systemui/dreamliner/DockIndicationController$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/systemui/dreamliner/DockIndicationController;)V

    iput-object p2, p0, Lcom/google/android/systemui/dreamliner/DockIndicationController;->mHidePromoRunnable:Ljava/lang/Runnable;

    .line 92
    new-instance p2, Lcom/google/android/systemui/dreamliner/DockIndicationController$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/google/android/systemui/dreamliner/DockIndicationController$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/systemui/dreamliner/DockIndicationController;)V

    iput-object p2, p0, Lcom/google/android/systemui/dreamliner/DockIndicationController;->mDisableLiveRegionRunnable:Ljava/lang/Runnable;

    .line 93
    sget p2, Lcom/android/systemui/R$anim;->dock_promo_animation:I

    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/systemui/dreamliner/DockIndicationController;->mShowPromoAnimation:Landroid/view/animation/Animation;

    .line 94
    new-instance p3, Lcom/google/android/systemui/dreamliner/DockIndicationController$1;

    invoke-direct {p3, p0}, Lcom/google/android/systemui/dreamliner/DockIndicationController$1;-><init>(Lcom/google/android/systemui/dreamliner/DockIndicationController;)V

    invoke-virtual {p2, p3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 102
    sget p2, Lcom/android/systemui/R$anim;->dock_promo_fade_out:I

    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/systemui/dreamliner/DockIndicationController;->mHidePromoAnimation:Landroid/view/animation/Animation;

    .line 103
    new-instance p3, Lcom/google/android/systemui/dreamliner/DockIndicationController$2;

    invoke-direct {p3, p0}, Lcom/google/android/systemui/dreamliner/DockIndicationController$2;-><init>(Lcom/google/android/systemui/dreamliner/DockIndicationController;)V

    invoke-virtual {p2, p3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    const-string p2, "accessibility"

    .line 117
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    iput-object p1, p0, Lcom/google/android/systemui/dreamliner/DockIndicationController;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/systemui/dreamliner/DockIndicationController;)Ljava/lang/Runnable;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/google/android/systemui/dreamliner/DockIndicationController;->mHidePromoRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$200()J
    .locals 2

    .line 39
    sget-wide v0, Lcom/google/android/systemui/dreamliner/DockIndicationController;->PROMO_SHOWING_TIME_MILLIS:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/google/android/systemui/dreamliner/DockIndicationController;J)J
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/google/android/systemui/dreamliner/DockIndicationController;->getRecommendedTimeoutMillis(J)J

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$400(Lcom/google/android/systemui/dreamliner/DockIndicationController;)I
    .locals 0

    .line 39
    iget p0, p0, Lcom/google/android/systemui/dreamliner/DockIndicationController;->mShowPromoTimes:I

    return p0
.end method

.method static synthetic access$500(Lcom/google/android/systemui/dreamliner/DockIndicationController;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/google/android/systemui/dreamliner/DockIndicationController;->showPromoInner()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/android/systemui/dreamliner/DockIndicationController;)Lcom/android/systemui/statusbar/KeyguardIndicationController;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/google/android/systemui/dreamliner/DockIndicationController;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    return-object p0
.end method

.method private disableLiveRegion()V
    .locals 1

    .line 277
    iget-boolean v0, p0, Lcom/google/android/systemui/dreamliner/DockIndicationController;->mDocking:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/systemui/dreamliner/DockIndicationController;->mDozing:Z

    if-eqz v0, :cond_0

    .line 278
    iget-object p0, p0, Lcom/google/android/systemui/dreamliner/DockIndicationController;->mTopIndicationView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setAccessibilityLiveRegion(I)V

    :cond_0
    return-void
.end method

.method private getRecommendedTimeoutMillis(J)J
    .locals 0

    .line 284
    iget-object p0, p0, Lcom/google/android/systemui/dreamliner/DockIndicationController;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-nez p0, :cond_0

    goto :goto_0

    .line 286
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Math;->toIntExact(J)I

    move-result p1

    const/4 p2, 0x2

    .line 285
    invoke-virtual {p0, p1, p2}, Landroid/view/accessibility/AccessibilityManager;->getRecommendedTimeoutMillis(II)I

    move-result p0

    int-to-long p1, p0

    :goto_0
    return-wide p1
.end method

.method private hidePromo()V
    .locals 1

    .line 236
    iget-boolean v0, p0, Lcom/google/android/systemui/dreamliner/DockIndicationController;->mDozing:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/systemui/dreamliner/DockIndicationController;->mDocking:Z

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/google/android/systemui/dreamliner/DockIndicationController;->mDockPromo:Landroid/widget/FrameLayout;

    iget-object p0, p0, Lcom/google/android/systemui/dreamliner/DockIndicationController;->mHidePromoAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method

.method private showPromoInner()V
    .locals 2

    .line 227
    iget-boolean v0, p0, Lcom/google/android/systemui/dreamliner/DockIndicationController;->mDozing:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/systemui/dreamliner/DockIndicationController;->mDocking:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/systemui/dreamliner/DockIndicationController;->mShowPromo:Z

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/google/android/systemui/dreamliner/DockIndicationController;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->setVisible(Z)V

    .line 229
    iget-object v0, p0, Lcom/google/android/systemui/dreamliner/DockIndicationController;->mDockPromo:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 230
    iget-object v0, p0, Lcom/google/android/systemui/dreamliner/DockIndicationController;->mDockPromo:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/google/android/systemui/dreamliner/DockIndicationController;->mShowPromoAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 231
    iget v0, p0, Lcom/google/android/systemui/dreamliner/DockIndicationController;->mShowPromoTimes:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/systemui/dreamliner/DockIndicationController;->mShowPromoTimes:I

    :cond_0
    return-void
.end method

.method private updateLiveRegionIfNeeded()V
    .locals 4

    .line 260
    iget-object v0, p0, Lcom/google/android/systemui/dreamliner/DockIndicationController;->mTopIndicationView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    .line 261
    invoke-virtual {v0}, Landroid/widget/TextView;->getAccessibilityLiveRegion()I

    move-result v0

    .line 262
    iget-boolean v1, p0, Lcom/google/android/systemui/dreamliner/DockIndicationController;->mDozing:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/google/android/systemui/dreamliner/DockIndicationController;->mDocking:Z

    if-eqz v1, :cond_0

    .line 263
    iget-object v0, p0, Lcom/google/android/systemui/dreamliner/DockIndicationController;->mTopIndicationView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    iget-object v1, p0, Lcom/google/android/systemui/dreamliner/DockIndicationController;->mDisableLiveRegionRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 264
    iget-object v0, p0, Lcom/google/android/systemui/dreamliner/DockIndicationController;->mTopIndicationView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    iget-object v1, p0, Lcom/google/android/systemui/dreamliner/DockIndicationController;->mDisableLiveRegionRunnable:Ljava/lang/Runnable;

    sget-wide v2, Lcom/google/android/systemui/dreamliner/DockIndicationController;->KEYGUARD_INDICATION_TIMEOUT_MILLIS:J

    .line 266
    invoke-direct {p0, v2, v3}, Lcom/google/android/systemui/dreamliner/DockIndicationController;->getRecommendedTimeoutMillis(J)J

    move-result-wide v2

    .line 264
    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 271
    iget-object p0, p0, Lcom/google/android/systemui/dreamliner/DockIndicationController;->mTopIndicationView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setAccessibilityLiveRegion(I)V

    :cond_1
    return-void
.end method

.method private updateVisibility()V
    .locals 2

    .line 242
    iget-boolean v0, p0, Lcom/google/android/systemui/dreamliner/DockIndicationController;->mIconViewsValidated:Z

    if-nez v0, :cond_0

    .line 243
    invoke-virtual {p0}, Lcom/google/android/systemui/dreamliner/DockIndicationController;->initializeIconViews()V

    .line 246
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/systemui/dreamliner/DockIndicationController;->mDozing:Z

    const/16 v1, 0x8

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/google/android/systemui/dreamliner/DockIndicationController;->mDocking:Z

    if-nez v0, :cond_1

    goto :goto_0

    .line 251
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/systemui/dreamliner/DockIndicationController;->mTopIconShowing:Z

    if-nez v0, :cond_2

    .line 252
    iget-object p0, p0, Lcom/google/android/systemui/dreamliner/DockIndicationController;->mDockedTopIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    .line 256
    :cond_2
    iget-object p0, p0, Lcom/google/android/systemui/dreamliner/DockIndicationController;->mDockedTopIcon:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    .line 247
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/google/android/systemui/dreamliner/DockIndicationController;->mDockPromo:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 248
    iget-object v0, p0, Lcom/google/android/systemui/dreamliner/DockIndicationController;->mDockedTopIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 249
    iget-object p0, p0, Lcom/google/android/systemui/dreamliner/DockIndicationController;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->setVisible(Z)V

    return-void
.end method


# virtual methods
.method initializeIconViews()V
    .locals 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 182
    iget-object v0, p0, Lcom/google/android/systemui/dreamliner/DockIndicationController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 183
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNotificationShadeWindowView()Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;

    move-result-object v0

    .line 185
    sget v1, Lcom/android/systemui/R$id;->docked_top_icon:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/google/android/systemui/dreamliner/DockIndicationController;->mDockedTopIcon:Landroid/widget/ImageView;

    .line 186
    sget v2, Lcom/android/systemui/R$drawable;->ic_assistant_logo:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 187
    iget-object v1, p0, Lcom/google/android/systemui/dreamliner/DockIndicationController;->mDockedTopIcon:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/google/android/systemui/dreamliner/DockIndicationController;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/systemui/R$string;->accessibility_assistant_poodle:I

    .line 188
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 187
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 189
    iget-object v1, p0, Lcom/google/android/systemui/dreamliner/DockIndicationController;->mDockedTopIcon:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/google/android/systemui/dreamliner/DockIndicationController;->mContext:Landroid/content/Context;

    .line 190
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 189
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTooltipText(Ljava/lang/CharSequence;)V

    .line 191
    iget-object v1, p0, Lcom/google/android/systemui/dreamliner/DockIndicationController;->mDockedTopIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    sget v1, Lcom/android/systemui/R$id;->dock_promo:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/google/android/systemui/dreamliner/DockIndicationController;->mDockPromo:Landroid/widget/FrameLayout;

    .line 193
    sget v1, Lcom/android/systemui/R$id;->photo_promo_text:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/google/android/systemui/dreamliner/DockIndicationController;->mPromoText:Landroid/widget/TextView;

    const/16 v2, 0xa

    const/16 v3, 0x10

    const/4 v4, 0x1

    const/4 v5, 0x2

    .line 194
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/TextView;->setAutoSizeTextTypeUniformWithConfiguration(IIII)V

    .line 200
    sget v1, Lcom/android/systemui/R$id;->ambient_indication:I

    .line 201
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 202
    invoke-virtual {v1, p0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 203
    sget v1, Lcom/android/systemui/R$id;->keyguard_indication_text:I

    .line 204
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    iput-object v0, p0, Lcom/google/android/systemui/dreamliner/DockIndicationController;->mTopIndicationView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    .line 206
    iput-boolean v4, p0, Lcom/google/android/systemui/dreamliner/DockIndicationController;->mIconViewsValidated:Z

    return-void
.end method

.method public isPromoShowing()Z
    .locals 0

    .line 223
    iget-object p0, p0, Lcom/google/android/systemui/dreamliner/DockIndicationController;->mDockPromo:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 122
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/android/systemui/R$id;->docked_top_icon:I

    if-ne p1, v0, :cond_0

    .line 123
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.google.android.systemui.dreamliner.ASSISTANT_POODLE"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x40000000    # 2.0f

    .line 124
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 126
    :try_start_0
    iget-object p0, p0, Lcom/google/android/systemui/dreamliner/DockIndicationController;->mContext:Landroid/content/Context;

    sget-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot send event for intent= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DLIndicator"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public onDozingChanged(Z)V
    .locals 0

    .line 135
    iput-boolean p1, p0, Lcom/google/android/systemui/dreamliner/DockIndicationController;->mDozing:Z

    .line 136
    invoke-direct {p0}, Lcom/google/android/systemui/dreamliner/DockIndicationController;->updateVisibility()V

    .line 137
    invoke-direct {p0}, Lcom/google/android/systemui/dreamliner/DockIndicationController;->updateLiveRegionIfNeeded()V

    .line 138
    iget-boolean p1, p0, Lcom/google/android/systemui/dreamliner/DockIndicationController;->mDozing:Z

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 139
    iput-boolean p1, p0, Lcom/google/android/systemui/dreamliner/DockIndicationController;->mShowPromo:Z

    goto :goto_0

    .line 141
    :cond_0
    invoke-direct {p0}, Lcom/google/android/systemui/dreamliner/DockIndicationController;->showPromoInner()V

    :goto_0
    return-void
.end method

.method public onLocaleListChanged()V
    .locals 2

    .line 159
    iget-boolean v0, p0, Lcom/google/android/systemui/dreamliner/DockIndicationController;->mIconViewsValidated:Z

    if-nez v0, :cond_0

    .line 160
    invoke-virtual {p0}, Lcom/google/android/systemui/dreamliner/DockIndicationController;->initializeIconViews()V

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/dreamliner/DockIndicationController;->mPromoText:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/google/android/systemui/dreamliner/DockIndicationController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/systemui/R$string;->dock_promo_text:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    .line 152
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    const/4 p1, 0x0

    .line 153
    iput-boolean p1, p0, Lcom/google/android/systemui/dreamliner/DockIndicationController;->mIconViewsValidated:Z

    const/4 p1, 0x0

    .line 154
    iput-object p1, p0, Lcom/google/android/systemui/dreamliner/DockIndicationController;->mDockedTopIcon:Landroid/widget/ImageView;

    return-void
.end method

.method public setDocking(Z)V
    .locals 0

    .line 171
    iput-boolean p1, p0, Lcom/google/android/systemui/dreamliner/DockIndicationController;->mDocking:Z

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 173
    iput-boolean p1, p0, Lcom/google/android/systemui/dreamliner/DockIndicationController;->mTopIconShowing:Z

    .line 174
    iput-boolean p1, p0, Lcom/google/android/systemui/dreamliner/DockIndicationController;->mShowPromo:Z

    .line 176
    :cond_0
    invoke-direct {p0}, Lcom/google/android/systemui/dreamliner/DockIndicationController;->updateVisibility()V

    .line 177
    invoke-direct {p0}, Lcom/google/android/systemui/dreamliner/DockIndicationController;->updateLiveRegionIfNeeded()V

    return-void
.end method

.method public setShowing(Z)V
    .locals 0

    .line 166
    iput-boolean p1, p0, Lcom/google/android/systemui/dreamliner/DockIndicationController;->mTopIconShowing:Z

    .line 167
    invoke-direct {p0}, Lcom/google/android/systemui/dreamliner/DockIndicationController;->updateVisibility()V

    return-void
.end method

.method public showPromo(Landroid/os/ResultReceiver;)V
    .locals 4

    const/4 v0, 0x0

    .line 211
    iput v0, p0, Lcom/google/android/systemui/dreamliner/DockIndicationController;->mShowPromoTimes:I

    const/4 v1, 0x1

    .line 212
    iput-boolean v1, p0, Lcom/google/android/systemui/dreamliner/DockIndicationController;->mShowPromo:Z

    .line 214
    iget-boolean v2, p0, Lcom/google/android/systemui/dreamliner/DockIndicationController;->mDozing:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/google/android/systemui/dreamliner/DockIndicationController;->mDocking:Z

    if-eqz v2, :cond_0

    .line 215
    invoke-direct {p0}, Lcom/google/android/systemui/dreamliner/DockIndicationController;->showPromoInner()V

    .line 216
    invoke-virtual {p1, v0, v3}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    goto :goto_0

    .line 218
    :cond_0
    invoke-virtual {p1, v1, v3}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    :goto_0
    return-void
.end method
