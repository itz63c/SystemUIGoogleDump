.class public Lcom/android/keyguard/AnimatableClockController;
.super Lcom/android/systemui/util/ViewController;
.source "AnimatableClockController.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/util/ViewController<",
        "Lcom/android/keyguard/AnimatableClockView;",
        ">;"
    }
.end annotation


# instance fields
.field private final mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field private final mBurmeseLineSpacing:F

.field private final mBurmeseNf:Landroid/icu/text/NumberFormat;

.field private final mBurmeseNumerals:Ljava/lang/String;

.field private final mDefaultLineSpacing:F

.field private final mDozingColor:I

.field private mIsDozing:Z

.field private mLocale:Ljava/util/Locale;

.field private mLocaleBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mLockScreenColor:I

.field private final mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field private final mStatusBarStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/AnimatableClockView;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/broadcast/BroadcastDispatcher;)V
    .locals 1

    .line 61
    invoke-direct {p0, p1}, Lcom/android/systemui/util/ViewController;-><init>(Landroid/view/View;)V

    const/4 p1, -0x1

    .line 46
    iput p1, p0, Lcom/android/keyguard/AnimatableClockController;->mDozingColor:I

    const-string p1, "my"

    .line 52
    invoke-static {p1}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object p1

    invoke-static {p1}, Landroid/icu/text/NumberFormat;->getInstance(Ljava/util/Locale;)Landroid/icu/text/NumberFormat;

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/AnimatableClockController;->mBurmeseNf:Landroid/icu/text/NumberFormat;

    .line 73
    new-instance v0, Lcom/android/keyguard/AnimatableClockController$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/AnimatableClockController$1;-><init>(Lcom/android/keyguard/AnimatableClockController;)V

    iput-object v0, p0, Lcom/android/keyguard/AnimatableClockController;->mLocaleBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 143
    new-instance v0, Lcom/android/keyguard/AnimatableClockController$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/AnimatableClockController$2;-><init>(Lcom/android/keyguard/AnimatableClockController;)V

    iput-object v0, p0, Lcom/android/keyguard/AnimatableClockController;->mStatusBarStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

    .line 62
    iput-object p2, p0, Lcom/android/keyguard/AnimatableClockController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 63
    invoke-interface {p2}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isDozing()Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/keyguard/AnimatableClockController;->mIsDozing:Z

    .line 64
    iput-object p3, p0, Lcom/android/keyguard/AnimatableClockController;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    const-wide/32 p2, 0x499602d2

    .line 66
    invoke-virtual {p1, p2, p3}, Landroid/icu/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/AnimatableClockController;->mBurmeseNumerals:Ljava/lang/String;

    .line 67
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$dimen;->keyguard_clock_line_spacing_scale_burmese:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p1

    iput p1, p0, Lcom/android/keyguard/AnimatableClockController;->mBurmeseLineSpacing:F

    .line 69
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$dimen;->keyguard_clock_line_spacing_scale:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p1

    iput p1, p0, Lcom/android/keyguard/AnimatableClockController;->mDefaultLineSpacing:F

    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/AnimatableClockController;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/android/keyguard/AnimatableClockController;->updateLocale()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/keyguard/AnimatableClockController;)Z
    .locals 0

    .line 41
    iget-boolean p0, p0, Lcom/android/keyguard/AnimatableClockController;->mIsDozing:Z

    return p0
.end method

.method static synthetic access$102(Lcom/android/keyguard/AnimatableClockController;Z)Z
    .locals 0

    .line 41
    iput-boolean p1, p0, Lcom/android/keyguard/AnimatableClockController;->mIsDozing:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/keyguard/AnimatableClockController;)Landroid/view/View;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method private initColors()V
    .locals 3

    .line 137
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$attr;->wallpaperTextColor:I

    invoke-static {v0, v1}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/AnimatableClockController;->mLockScreenColor:I

    .line 139
    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/keyguard/AnimatableClockView;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/android/keyguard/AnimatableClockView;->setColors(II)V

    .line 140
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/AnimatableClockView;

    iget-boolean p0, p0, Lcom/android/keyguard/AnimatableClockController;->mIsDozing:Z

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/keyguard/AnimatableClockView;->animateDoze(ZZ)V

    return-void
.end method

.method private updateLocale()V
    .locals 3

    .line 124
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 125
    iget-object v1, p0, Lcom/android/keyguard/AnimatableClockController;->mLocale:Ljava/util/Locale;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 126
    iput-object v0, p0, Lcom/android/keyguard/AnimatableClockController;->mLocale:Ljava/util/Locale;

    .line 127
    invoke-static {v0}, Landroid/icu/text/NumberFormat;->getInstance(Ljava/util/Locale;)Landroid/icu/text/NumberFormat;

    move-result-object v0

    const-wide/32 v1, 0x499602d2

    .line 128
    invoke-virtual {v0, v1, v2}, Landroid/icu/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/AnimatableClockController;->mBurmeseNumerals:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/AnimatableClockView;

    iget p0, p0, Lcom/android/keyguard/AnimatableClockController;->mBurmeseLineSpacing:F

    invoke-virtual {v0, p0}, Lcom/android/keyguard/AnimatableClockView;->setLineSpacingScale(F)V

    goto :goto_0

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/AnimatableClockView;

    iget p0, p0, Lcom/android/keyguard/AnimatableClockController;->mDefaultLineSpacing:F

    invoke-virtual {v0, p0}, Lcom/android/keyguard/AnimatableClockView;->setLineSpacingScale(F)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method getClockTextTopPadding()F
    .locals 1

    .line 98
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/AnimatableClockView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p0

    invoke-virtual {p0}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object p0

    .line 99
    iget v0, p0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    iget p0, p0, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v0, p0

    invoke-static {v0}, Landroid/util/MathUtils;->abs(F)F

    move-result p0

    return p0
.end method

.method public onTimeZoneChanged(Ljava/util/TimeZone;)V
    .locals 0

    .line 113
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/AnimatableClockView;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/AnimatableClockView;->onTimeZoneChanged(Ljava/util/TimeZone;)V

    return-void
.end method

.method protected onViewAttached()V
    .locals 4

    .line 82
    invoke-direct {p0}, Lcom/android/keyguard/AnimatableClockController;->updateLocale()V

    .line 83
    iget-object v0, p0, Lcom/android/keyguard/AnimatableClockController;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v1, p0, Lcom/android/keyguard/AnimatableClockController;->mLocaleBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.LOCALE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 85
    iget-object v0, p0, Lcom/android/keyguard/AnimatableClockController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iget-object v1, p0, Lcom/android/keyguard/AnimatableClockController;->mStatusBarStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 86
    iget-object v0, p0, Lcom/android/keyguard/AnimatableClockController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isDozing()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/AnimatableClockController;->mIsDozing:Z

    .line 87
    invoke-virtual {p0}, Lcom/android/keyguard/AnimatableClockController;->refreshTime()V

    .line 88
    invoke-direct {p0}, Lcom/android/keyguard/AnimatableClockController;->initColors()V

    return-void
.end method

.method protected onViewDetached()V
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/android/keyguard/AnimatableClockController;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v1, p0, Lcom/android/keyguard/AnimatableClockController;->mLocaleBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 94
    iget-object v0, p0, Lcom/android/keyguard/AnimatableClockController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iget-object p0, p0, Lcom/android/keyguard/AnimatableClockController;->mStatusBarStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->removeCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    return-void
.end method

.method public refreshFormat()V
    .locals 0

    .line 120
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/AnimatableClockView;

    invoke-virtual {p0}, Lcom/android/keyguard/AnimatableClockView;->refreshFormat()V

    return-void
.end method

.method public refreshTime()V
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/AnimatableClockView;

    invoke-virtual {p0}, Lcom/android/keyguard/AnimatableClockView;->refreshTime()V

    return-void
.end method
