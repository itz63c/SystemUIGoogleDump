.class public Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;
.super Landroid/widget/FrameLayout;
.source "KeyguardBottomAreaView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/systemui/statusbar/policy/KeyguardStateController$Callback;
.implements Lcom/android/systemui/statusbar/policy/AccessibilityController$AccessibilityStateChangedCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$DefaultRightButton;,
        Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$DefaultLeftButton;
    }
.end annotation


# static fields
.field public static final INSECURE_CAMERA_INTENT:Landroid/content/Intent;

.field private static final PHONE_INTENT:Landroid/content/Intent;

.field private static final SECURE_CAMERA_INTENT:Landroid/content/Intent;


# instance fields
.field private mAccessibilityController:Lcom/android/systemui/statusbar/policy/AccessibilityController;

.field private mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

.field private mActivityIntentHelper:Lcom/android/systemui/ActivityIntentHelper;

.field private mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field private mAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

.field private mAltLeftButton:Landroid/widget/ImageView;

.field private mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field private mBurnInXOffset:I

.field private mBurnInYOffset:I

.field private mCameraPreview:Landroid/view/View;

.field private mControlsComponent:Lcom/android/systemui/controls/dagger/ControlsComponent;

.field private mControlsDialog:Lcom/android/systemui/controls/ui/ControlsDialog;

.field private mDarkAmount:F

.field private final mDevicePolicyReceiver:Landroid/content/BroadcastReceiver;

.field private mDozing:Z

.field private mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

.field private mIndicationArea:Landroid/view/ViewGroup;

.field private mIndicationBottomMargin:I

.field private mIndicationText:Landroid/widget/TextView;

.field private mIndicationTextBottom:Landroid/widget/TextView;

.field private mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field private mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mLeftAffordanceView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

.field private mLeftAssistIcon:Landroid/graphics/drawable/Drawable;

.field private mLeftButton:Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton;

.field private mLeftButtonStr:Ljava/lang/String;

.field private mLeftExtension:Lcom/android/systemui/statusbar/policy/ExtensionController$Extension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/statusbar/policy/ExtensionController$Extension<",
            "Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton;",
            ">;"
        }
    .end annotation
.end field

.field private mLeftIsVoiceAssist:Z

.field private mLeftPreview:Landroid/view/View;

.field private mLockScreenMode:I

.field private mOverlayContainer:Landroid/view/ViewGroup;

.field private mPreviewContainer:Landroid/view/ViewGroup;

.field private mPreviewInflater:Lcom/android/systemui/statusbar/policy/PreviewInflater;

.field private mPrewarmBound:Z

.field private final mPrewarmConnection:Landroid/content/ServiceConnection;

.field private mPrewarmMessenger:Landroid/os/Messenger;

.field private mRightAffordanceView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

.field private mRightButton:Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton;

.field private mRightButtonStr:Ljava/lang/String;

.field private mRightExtension:Lcom/android/systemui/statusbar/policy/ExtensionController$Extension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/statusbar/policy/ExtensionController$Extension<",
            "Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton;",
            ">;"
        }
    .end annotation
.end field

.field private final mShowCameraAffordance:Z

.field private final mShowLeftAffordance:Z

.field private mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private final mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mUserSetupComplete:Z


# direct methods
.method public static synthetic $r8$lambda$16RFmEAdF-ZY9vwT0wK46ioxvko(Lcom/android/systemui/plugins/IntentButtonProvider;)Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton;
    .locals 0

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->lambda$onAttachedToWindow$3(Lcom/android/systemui/plugins/IntentButtonProvider;)Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$1OSR3uExlToiFsmtuLEoCI7BEik(Lcom/android/systemui/plugins/IntentButtonProvider;)Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton;
    .locals 0

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->lambda$onAttachedToWindow$0(Lcom/android/systemui/plugins/IntentButtonProvider;)Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$674csFaOKXiowZ1leP8eeW7iKkU(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->lambda$setupControls$7(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JVlBdoCCxlzh319wVREcdJUMaDg(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->lambda$setupControls$6(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$R0L7u_Yuzpn47ogEAz7vrjjDUeY(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->lambda$onAttachedToWindow$5(Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WSa47beJ-2FcuPAwDJ-AsFX3UrM(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton;
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->lambda$onAttachedToWindow$1()Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$h6tuBsqGq-tyyEnpXk9pNHSWWQg(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton;
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->lambda$onAttachedToWindow$4()Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$iae3mSX5LWtK6_LtR_Yn1Vv12jM(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->lambda$onAttachedToWindow$2(Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 118
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x800000

    .line 120
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->SECURE_CAMERA_INTENT:Landroid/content/Intent;

    .line 121
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->INSECURE_CAMERA_INTENT:Landroid/content/Intent;

    .line 123
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DIAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->PHONE_INTENT:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 190
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 194
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 198
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 203
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 154
    new-instance p1, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$1;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mPrewarmConnection:Landroid/content/ServiceConnection;

    .line 170
    new-instance p1, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$DefaultRightButton;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$DefaultRightButton;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$1;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mRightButton:Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton;

    .line 173
    new-instance p1, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$DefaultLeftButton;

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$DefaultLeftButton;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$1;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLeftButton:Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton;

    .line 209
    new-instance p1, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$2;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    .line 725
    new-instance p1, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$7;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$7;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mDevicePolicyReceiver:Landroid/content/BroadcastReceiver;

    .line 737
    new-instance p1, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$8;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$8;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 204
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$bool;->config_keyguardShowLeftAffordance:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mShowLeftAffordance:Z

    .line 205
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$bool;->config_keyguardShowCameraAffordance:I

    .line 206
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mShowCameraAffordance:Z

    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mPrewarmMessenger:Landroid/os/Messenger;

    return-object p1
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Z
    .locals 0

    .line 99
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mUserSetupComplete:Z

    return p0
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Z
    .locals 0

    .line 99
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mShowLeftAffordance:Z

    return p0
.end method

.method static synthetic access$1200(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLeftAssistIcon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Landroid/content/Context;
    .locals 0

    .line 99
    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Landroid/content/Context;
    .locals 0

    .line 99
    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Z
    .locals 0

    .line 99
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->isPhoneVisible()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1600(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Landroid/content/Context;
    .locals 0

    .line 99
    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Landroid/content/Context;
    .locals 0

    .line 99
    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1800()Landroid/content/Intent;
    .locals 1

    .line 99
    sget-object v0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->PHONE_INTENT:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Lcom/android/systemui/statusbar/phone/StatusBar;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Z
    .locals 0

    .line 99
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mShowCameraAffordance:Z

    return p0
.end method

.method static synthetic access$2100(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Landroid/content/Context;
    .locals 0

    .line 99
    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Landroid/content/Context;
    .locals 0

    .line 99
    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Lcom/android/systemui/statusbar/policy/KeyguardStateController;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    return-object p0
.end method

.method static synthetic access$2400()Landroid/content/Intent;
    .locals 1

    .line 99
    sget-object v0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->SECURE_CAMERA_INTENT:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mRightAffordanceView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLeftAffordanceView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Z
    .locals 0

    .line 99
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLeftIsVoiceAssist:Z

    return p0
.end method

.method static synthetic access$502(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;Z)Z
    .locals 0

    .line 99
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLeftIsVoiceAssist:Z

    return p1
.end method

.method static synthetic access$600(I)Z
    .locals 0

    .line 99
    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->isSuccessfulLaunch(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V
    .locals 0

    .line 99
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->updateCameraVisibility()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V
    .locals 0

    .line 99
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->inflateCameraPreview()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Z
    .locals 0

    .line 99
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->canLaunchVoiceAssist()Z

    move-result p0

    return p0
.end method

.method private canLaunchVoiceAssist()Z
    .locals 0

    .line 602
    const-class p0, Lcom/android/systemui/assist/AssistManager;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/assist/AssistManager;

    invoke-virtual {p0}, Lcom/android/systemui/assist/AssistManager;->canVoiceAssistBeLaunchedFromKeyguard()Z

    move-result p0

    return p0
.end method

.method private getCameraIntent()Landroid/content/Intent;
    .locals 0

    .line 386
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mRightButton:Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton;

    invoke-interface {p0}, Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton;->getIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method private inflateCameraPreview()V
    .locals 4

    .line 661
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mCameraPreview:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 664
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mPreviewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 665
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 667
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mPreviewInflater:Lcom/android/systemui/statusbar/policy/PreviewInflater;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getCameraIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/policy/PreviewInflater;->inflatePreview(Landroid/content/Intent;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mCameraPreview:Landroid/view/View;

    if-eqz v2, :cond_2

    .line 669
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mPreviewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 670
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mCameraPreview:Landroid/view/View;

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x4

    :goto_1
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 672
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    if-eqz p0, :cond_3

    .line 673
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->updatePreviews()V

    :cond_3
    return-void
.end method

.method private initAccessibility()V
    .locals 2

    .line 317
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLeftAffordanceView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 318
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mRightAffordanceView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    return-void
.end method

.method private isPhoneVisible()Z
    .locals 2

    .line 443
    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android.hardware.telephony"

    .line 444
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->PHONE_INTENT:Landroid/content/Intent;

    .line 445
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private static isSuccessfulLaunch(I)Z
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static synthetic lambda$onAttachedToWindow$0(Lcom/android/systemui/plugins/IntentButtonProvider;)Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton;
    .locals 0

    .line 284
    invoke-interface {p0}, Lcom/android/systemui/plugins/IntentButtonProvider;->getIntentButton()Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$onAttachedToWindow$1()Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton;
    .locals 2

    .line 286
    new-instance v0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$DefaultRightButton;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$DefaultRightButton;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$1;)V

    return-object v0
.end method

.method private synthetic lambda$onAttachedToWindow$2(Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton;)V
    .locals 0

    .line 287
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setRightButton(Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton;)V

    return-void
.end method

.method private static synthetic lambda$onAttachedToWindow$3(Lcom/android/systemui/plugins/IntentButtonProvider;)Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton;
    .locals 0

    .line 291
    invoke-interface {p0}, Lcom/android/systemui/plugins/IntentButtonProvider;->getIntentButton()Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$onAttachedToWindow$4()Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton;
    .locals 2

    .line 293
    new-instance v0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$DefaultLeftButton;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$DefaultLeftButton;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$1;)V

    return-object v0
.end method

.method private synthetic lambda$onAttachedToWindow$5(Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton;)V
    .locals 0

    .line 294
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setLeftButton(Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton;)V

    return-void
.end method

.method private synthetic lambda$setupControls$6(Landroid/view/View;)V
    .locals 3

    .line 911
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mControlsComponent:Lcom/android/systemui/controls/dagger/ControlsComponent;

    .line 912
    invoke-virtual {p1}, Lcom/android/systemui/controls/dagger/ControlsComponent;->getControlsUiController()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/controls/ui/ControlsUiController;

    .line 913
    new-instance v0, Lcom/android/systemui/controls/ui/ControlsDialog;

    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/controls/ui/ControlsDialog;-><init>(Landroid/content/Context;Lcom/android/systemui/broadcast/BroadcastDispatcher;)V

    .line 914
    invoke-virtual {v0, p1}, Lcom/android/systemui/controls/ui/ControlsDialog;->show(Lcom/android/systemui/controls/ui/ControlsUiController;)Lcom/android/systemui/controls/ui/ControlsDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mControlsDialog:Lcom/android/systemui/controls/ui/ControlsDialog;

    return-void
.end method

.method private synthetic lambda$setupControls$7(Ljava/util/List;)V
    .locals 2

    .line 908
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 909
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mAltLeftButton:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/controls/ControlsServiceInfo;

    invoke-virtual {p1}, Lcom/android/settingslib/applications/DefaultAppInfo;->loadIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 910
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mAltLeftButton:Landroid/widget/ImageView;

    new-instance v0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView-$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView-$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 917
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->updateControlsVisibility()V

    return-void
.end method

.method private launchPhone()V
    .locals 3

    .line 606
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v0

    .line 607
    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 608
    new-instance v1, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$6;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$6;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;Landroid/telecom/TelecomManager;)V

    invoke-static {v1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 615
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLeftButtonStr:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    const-class v0, Lcom/android/systemui/tuner/TunerService;

    .line 616
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    const-string v2, "sysui_keyguard_left_unlock"

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/tuner/TunerService;->getValue(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 617
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLeftButton:Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton;

    invoke-interface {p0}, Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton;->getIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-interface {v0, p0, v1}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;Z)V

    :goto_1
    return-void
.end method

.method private setLeftButton(Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton;)V
    .locals 0

    .line 765
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLeftButton:Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton;

    .line 766
    instance-of p1, p1, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$DefaultLeftButton;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 767
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLeftIsVoiceAssist:Z

    .line 769
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->updateLeftAffordance()V

    return-void
.end method

.method private setRightButton(Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton;)V
    .locals 0

    .line 758
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mRightButton:Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton;

    .line 759
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->updateRightAffordanceIcon()V

    .line 760
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->updateCameraVisibility()V

    .line 761
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->inflateCameraPreview()V

    return-void
.end method

.method private setupControls()V
    .locals 5

    .line 898
    iget v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLockScreenMode:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 899
    :goto_0
    iget-object v3, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "controls_lockscreen"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    .line 901
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mControlsComponent:Lcom/android/systemui/controls/dagger/ControlsComponent;

    invoke-virtual {v0}, Lcom/android/systemui/controls/dagger/ControlsComponent;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_2

    .line 906
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mControlsComponent:Lcom/android/systemui/controls/dagger/ControlsComponent;

    invoke-virtual {v0}, Lcom/android/systemui/controls/dagger/ControlsComponent;->getControlsListingController()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/controls/management/ControlsListingController;

    new-instance v1, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView-$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView-$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V

    .line 907
    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    return-void

    .line 902
    :cond_3
    :goto_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mAltLeftButton:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private startFinishDozeAnimationElement(Landroid/view/View;J)V
    .locals 1

    const/4 p0, 0x0

    .line 715
    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    .line 716
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 717
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 718
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 719
    invoke-virtual {p1, p0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    sget-object p1, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 720
    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 721
    invoke-virtual {p0, p2, p3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 p1, 0xfa

    .line 722
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method private updateCameraVisibility()V
    .locals 2

    .line 399
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mRightAffordanceView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    if-nez v0, :cond_0

    return-void

    .line 404
    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mDozing:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mShowCameraAffordance:Z

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mRightButton:Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton;

    invoke-interface {p0}, Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton;->getIcon()Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton$IconState;

    move-result-object p0

    iget-boolean p0, p0, Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton$IconState;->isVisible:Z

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    const/16 p0, 0x8

    .line 403
    :goto_0
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private updateControlsVisibility()V
    .locals 2

    .line 431
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mDozing:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mControlsComponent:Lcom/android/systemui/controls/dagger/ControlsComponent;

    invoke-virtual {v0}, Lcom/android/systemui/controls/dagger/ControlsComponent;->getVisibility()Lcom/android/systemui/controls/dagger/ControlsComponent$Visibility;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/controls/dagger/ControlsComponent$Visibility;->AVAILABLE:Lcom/android/systemui/controls/dagger/ControlsComponent$Visibility;

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 434
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mAltLeftButton:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 432
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mAltLeftButton:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method private updateLeftAffordanceIcon()V
    .locals 4

    .line 416
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mShowLeftAffordance:Z

    const/16 v1, 0x8

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mDozing:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 421
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLeftButton:Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton;

    invoke-interface {v0}, Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton;->getIcon()Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton$IconState;

    move-result-object v0

    .line 422
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLeftAffordanceView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    iget-boolean v3, v0, Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton$IconState;->isVisible:Z

    if-eqz v3, :cond_1

    const/4 v1, 0x0

    :cond_1
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 423
    iget-object v1, v0, Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton$IconState;->drawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLeftAffordanceView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-ne v1, v2, :cond_2

    iget-boolean v1, v0, Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton$IconState;->tint:Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLeftAffordanceView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    .line 424
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->shouldTint()Z

    move-result v2

    if-eq v1, v2, :cond_3

    .line 425
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLeftAffordanceView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    iget-object v2, v0, Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton$IconState;->drawable:Landroid/graphics/drawable/Drawable;

    iget-boolean v3, v0, Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton$IconState;->tint:Z

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setImageDrawable(Landroid/graphics/drawable/Drawable;Z)V

    .line 427
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLeftAffordanceView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    iget-object v0, v0, Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton$IconState;->contentDescription:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    .line 417
    :cond_4
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLeftAffordanceView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private updateLeftPreview()V
    .locals 3

    .line 678
    const-class v0, Lcom/android/systemui/assist/AssistManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLeftPreview:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 680
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mPreviewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 683
    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLeftIsVoiceAssist:Z

    if-eqz v1, :cond_1

    .line 684
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/assist/AssistManager;

    invoke-virtual {v1}, Lcom/android/systemui/assist/AssistManager;->getVoiceInteractorComponentName()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 685
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mPreviewInflater:Lcom/android/systemui/statusbar/policy/PreviewInflater;

    .line 686
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/assist/AssistManager;

    invoke-virtual {v0}, Lcom/android/systemui/assist/AssistManager;->getVoiceInteractorComponentName()Landroid/content/ComponentName;

    move-result-object v0

    .line 685
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/policy/PreviewInflater;->inflatePreviewFromService(Landroid/content/ComponentName;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLeftPreview:Landroid/view/View;

    goto :goto_0

    .line 689
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mPreviewInflater:Lcom/android/systemui/statusbar/policy/PreviewInflater;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLeftButton:Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton;

    invoke-interface {v1}, Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/PreviewInflater;->inflatePreview(Landroid/content/Intent;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLeftPreview:Landroid/view/View;

    .line 691
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLeftPreview:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 692
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mPreviewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 693
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLeftPreview:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 695
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    if-eqz p0, :cond_4

    .line 696
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->updatePreviews()V

    :cond_4
    return-void
.end method

.method private updateRightAffordanceIcon()V
    .locals 4

    .line 361
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mRightButton:Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton;

    invoke-interface {v0}, Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton;->getIcon()Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton$IconState;

    move-result-object v0

    .line 362
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mRightAffordanceView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mDozing:Z

    if-nez v2, :cond_0

    iget-boolean v2, v0, Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton$IconState;->isVisible:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 363
    iget-object v1, v0, Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton$IconState;->drawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mRightAffordanceView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-ne v1, v2, :cond_1

    iget-boolean v1, v0, Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton$IconState;->tint:Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mRightAffordanceView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    .line 364
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->shouldTint()Z

    move-result v2

    if-eq v1, v2, :cond_2

    .line 365
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mRightAffordanceView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    iget-object v2, v0, Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton$IconState;->drawable:Landroid/graphics/drawable/Drawable;

    iget-boolean v3, v0, Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton$IconState;->tint:Z

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setImageDrawable(Landroid/graphics/drawable/Drawable;Z)V

    .line 367
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mRightAffordanceView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    iget-object v0, v0, Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton$IconState;->contentDescription:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public bindCameraPrewarmService()V
    .locals 9

    .line 466
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getCameraIntent()Landroid/content/Intent;

    move-result-object v0

    .line 467
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mActivityIntentHelper:Lcom/android/systemui/ActivityIntentHelper;

    .line 468
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    const/4 v3, 0x1

    .line 467
    invoke-virtual {v1, v0, v2, v3}, Lcom/android/systemui/ActivityIntentHelper;->getTargetActivityInfo(Landroid/content/Intent;IZ)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 469
    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    const-string v2, "android.media.still_image_camera_preview_service"

    .line 470
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 473
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 474
    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "android.service.media.CameraPrewarmService.ACTION_PREWARM"

    .line 475
    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 477
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mPrewarmConnection:Landroid/content/ServiceConnection;

    const v6, 0x4000001

    new-instance v7, Landroid/os/UserHandle;

    const/4 v8, -0x2

    invoke-direct {v7, v8}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v4, v2, v5, v6, v7}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 480
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mPrewarmBound:Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 483
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to bind to prewarm service package="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " class="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StatusBar/KeyguardBottomAreaView"

    invoke-static {v1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public dozeTimeTick()V
    .locals 2

    .line 794
    iget v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mBurnInYOffset:I

    mul-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/doze/util/BurnInHelperKt;->getBurnInOffset(IZ)I

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mBurnInYOffset:I

    sub-int/2addr v0, v1

    .line 796
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mIndicationArea:Landroid/view/ViewGroup;

    int-to-float v0, v0

    iget p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mDarkAmount:F

    mul-float/2addr v0, p0

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setTranslationY(F)V

    return-void
.end method

.method public getIndicationArea()Landroid/view/View;
    .locals 0

    .line 647
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mIndicationArea:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public getLeftPreview()Landroid/view/View;
    .locals 0

    .line 639
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLeftPreview:Landroid/view/View;

    return-object p0
.end method

.method public getLeftView()Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    .locals 0

    .line 631
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLeftAffordanceView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    return-object p0
.end method

.method public getRightPreview()Landroid/view/View;
    .locals 0

    .line 643
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mCameraPreview:Landroid/view/View;

    return-object p0
.end method

.method public getRightView()Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    .locals 0

    .line 635
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mRightAffordanceView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    return-object p0
.end method

.method public hasOverlappingRendering()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public initFrom(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V
    .locals 0

    .line 242
    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setStatusBar(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    return-void
.end method

.method public isLeftVoiceAssist()Z
    .locals 0

    .line 439
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLeftIsVoiceAssist:Z

    return p0
.end method

.method public launchCamera(Ljava/lang/String;)V
    .locals 3

    .line 506
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getCameraIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.android.systemui.camera_launch_source"

    .line 507
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 508
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mActivityIntentHelper:Lcom/android/systemui/ActivityIntentHelper;

    .line 509
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    .line 508
    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/ActivityIntentHelper;->wouldLaunchResolverActivity(Landroid/content/Intent;I)Z

    move-result p1

    .line 510
    sget-object v1, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->SECURE_CAMERA_INTENT:Landroid/content/Intent;

    if-ne v0, v1, :cond_0

    if-nez p1, :cond_0

    .line 511
    new-instance p1, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$3;

    invoke-direct {p1, p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$3;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;Landroid/content/Intent;)V

    invoke-static {p1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 551
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    const/4 v1, 0x0

    new-instance v2, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$4;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$4;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V

    invoke-interface {p1, v0, v1, v2}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;ZLcom/android/systemui/plugins/ActivityStarter$Callback;)V

    :goto_0
    return-void
.end method

.method public launchLeftAffordance()V
    .locals 1

    .line 576
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLeftIsVoiceAssist:Z

    if-eqz v0, :cond_0

    .line 577
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->launchVoiceAssist()V

    goto :goto_0

    .line 579
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->launchPhone()V

    :goto_0
    return-void
.end method

.method launchVoiceAssist()V
    .locals 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 585
    new-instance v1, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$5;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$5;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V

    .line 591
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->canDismissLockScreen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 592
    sget-object p0, Lcom/android/systemui/Dependency;->BACKGROUND_EXECUTOR:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/Executor;

    invoke-interface {p0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 594
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mRightButtonStr:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    const-class v0, Lcom/android/systemui/tuner/TunerService;

    .line 595
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    const-string v3, "sysui_keyguard_right_unlock"

    invoke-virtual {v0, v3, v2}, Lcom/android/systemui/tuner/TunerService;->getValue(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    move v3, v0

    .line 596
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/StatusBar;->executeRunnableDismissingKeyguard(Ljava/lang/Runnable;Ljava/lang/Runnable;ZZZ)V

    :goto_1
    return-void
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 4

    .line 877
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 878
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 879
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isPaddingRelative()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 880
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingStart()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingEnd()I

    move-result v3

    invoke-virtual {p0, v1, v2, v3, v0}, Landroid/widget/FrameLayout;->setPaddingRelative(IIII)V

    goto :goto_1

    .line 882
    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v3

    invoke-virtual {p0, v1, v2, v3, v0}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    :goto_1
    return-object p1
.end method

.method protected onAttachedToWindow()V
    .locals 7

    .line 280
    const-class v0, Lcom/android/systemui/plugins/IntentButtonProvider;

    const-class v1, Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton;

    const-class v2, Lcom/android/systemui/statusbar/policy/ExtensionController;

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 281
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mAccessibilityController:Lcom/android/systemui/statusbar/policy/AccessibilityController;

    invoke-virtual {v3, p0}, Lcom/android/systemui/statusbar/policy/AccessibilityController;->addStateChangedCallback(Lcom/android/systemui/statusbar/policy/AccessibilityController$AccessibilityStateChangedCallback;)V

    .line 282
    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/ExtensionController;

    invoke-interface {v3, v1}, Lcom/android/systemui/statusbar/policy/ExtensionController;->newExtension(Ljava/lang/Class;)Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView-$$ExternalSyntheticLambda3;->INSTANCE:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView-$$ExternalSyntheticLambda3;

    const-string v5, "com.android.systemui.action.PLUGIN_LOCKSCREEN_RIGHT_BUTTON"

    .line 283
    invoke-interface {v3, v0, v5, v4}, Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder;->withPlugin(Ljava/lang/Class;Ljava/lang/String;Lcom/android/systemui/statusbar/policy/ExtensionController$PluginConverter;)Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/tuner/LockscreenFragment$LockButtonFactory;

    iget-object v5, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    const-string v6, "sysui_keyguard_right"

    invoke-direct {v4, v5, v6}, Lcom/android/systemui/tuner/LockscreenFragment$LockButtonFactory;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 285
    invoke-interface {v3, v4}, Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder;->withTunerFactory(Lcom/android/systemui/statusbar/policy/ExtensionController$TunerFactory;)Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView-$$ExternalSyntheticLambda6;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView-$$ExternalSyntheticLambda6;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V

    .line 286
    invoke-interface {v3, v4}, Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder;->withDefault(Ljava/util/function/Supplier;)Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView-$$ExternalSyntheticLambda5;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView-$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V

    .line 287
    invoke-interface {v3, v4}, Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder;->withCallback(Ljava/util/function/Consumer;)Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder;

    move-result-object v3

    .line 288
    invoke-interface {v3}, Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder;->build()Lcom/android/systemui/statusbar/policy/ExtensionController$Extension;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mRightExtension:Lcom/android/systemui/statusbar/policy/ExtensionController$Extension;

    .line 289
    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/ExtensionController;

    invoke-interface {v2, v1}, Lcom/android/systemui/statusbar/policy/ExtensionController;->newExtension(Ljava/lang/Class;)Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView-$$ExternalSyntheticLambda2;->INSTANCE:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView-$$ExternalSyntheticLambda2;

    const-string v3, "com.android.systemui.action.PLUGIN_LOCKSCREEN_LEFT_BUTTON"

    .line 290
    invoke-interface {v1, v0, v3, v2}, Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder;->withPlugin(Ljava/lang/Class;Ljava/lang/String;Lcom/android/systemui/statusbar/policy/ExtensionController$PluginConverter;)Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/tuner/LockscreenFragment$LockButtonFactory;

    iget-object v2, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    const-string v3, "sysui_keyguard_left"

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/tuner/LockscreenFragment$LockButtonFactory;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 292
    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder;->withTunerFactory(Lcom/android/systemui/statusbar/policy/ExtensionController$TunerFactory;)Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView-$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView-$$ExternalSyntheticLambda7;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V

    .line 293
    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder;->withDefault(Ljava/util/function/Supplier;)Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView-$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView-$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V

    .line 294
    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder;->withCallback(Ljava/util/function/Consumer;)Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder;

    move-result-object v0

    .line 295
    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder;->build()Lcom/android/systemui/statusbar/policy/ExtensionController$Extension;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLeftExtension:Lcom/android/systemui/statusbar/policy/ExtensionController$Extension;

    .line 296
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    .line 297
    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 298
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mDevicePolicyReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 300
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 301
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 302
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 458
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mRightAffordanceView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    if-ne p1, v0, :cond_0

    const-string p1, "lockscreen_affordance"

    .line 459
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->launchCamera(Ljava/lang/String;)V

    goto :goto_0

    .line 460
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLeftAffordanceView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    if-ne p1, v0, :cond_1

    .line 461
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->launchLeftAffordance()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 323
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 324
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$dimen;->keyguard_indication_margin_bottom:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mIndicationBottomMargin:I

    .line 326
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$dimen;->default_burn_in_prevention_offset:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mBurnInYOffset:I

    .line 328
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mIndicationArea:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 329
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mIndicationBottomMargin:I

    if-eq v0, v1, :cond_0

    .line 330
    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 331
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mIndicationArea:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 335
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mIndicationTextBottom:Landroid/widget/TextView;

    .line 336
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105028c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    const/4 v2, 0x0

    .line 335
    invoke-virtual {p1, v2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 338
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mIndicationText:Landroid/widget/TextView;

    .line 339
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    .line 338
    invoke-virtual {p1, v2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 342
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mRightAffordanceView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 343
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->keyguard_affordance_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 344
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/systemui/R$dimen;->keyguard_affordance_height:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 345
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mRightAffordanceView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 346
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->updateRightAffordanceIcon()V

    .line 348
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLeftAffordanceView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 349
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 350
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 351
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLeftAffordanceView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 352
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->updateLeftAffordanceIcon()V

    .line 354
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mAltLeftButton:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 355
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 356
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 357
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mAltLeftButton:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 307
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 308
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    .line 309
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mAccessibilityController:Lcom/android/systemui/statusbar/policy/AccessibilityController;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/AccessibilityController;->removeStateChangedCallback(Lcom/android/systemui/statusbar/policy/AccessibilityController$AccessibilityStateChangedCallback;)V

    .line 310
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mRightExtension:Lcom/android/systemui/statusbar/policy/ExtensionController$Extension;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/ExtensionController$Extension;->destroy()V

    .line 311
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLeftExtension:Lcom/android/systemui/statusbar/policy/ExtensionController$Extension;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/ExtensionController$Extension;->destroy()V

    .line 312
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mDevicePolicyReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 313
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 5

    .line 247
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 248
    new-instance v0, Lcom/android/systemui/statusbar/policy/PreviewInflater;

    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v3, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    new-instance v3, Lcom/android/systemui/ActivityIntentHelper;

    iget-object v4, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/systemui/ActivityIntentHelper;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/policy/PreviewInflater;-><init>(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/systemui/ActivityIntentHelper;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mPreviewInflater:Lcom/android/systemui/statusbar/policy/PreviewInflater;

    .line 250
    sget v0, Lcom/android/systemui/R$id;->preview_container:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mPreviewContainer:Landroid/view/ViewGroup;

    .line 251
    sget v0, Lcom/android/systemui/R$id;->overlay_container:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mOverlayContainer:Landroid/view/ViewGroup;

    .line 252
    sget v0, Lcom/android/systemui/R$id;->camera_button:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mRightAffordanceView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    .line 253
    sget v0, Lcom/android/systemui/R$id;->left_button:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLeftAffordanceView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    .line 254
    sget v0, Lcom/android/systemui/R$id;->alt_left_button:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mAltLeftButton:Landroid/widget/ImageView;

    .line 255
    sget v0, Lcom/android/systemui/R$id;->keyguard_indication_area:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mIndicationArea:Landroid/view/ViewGroup;

    .line 256
    sget v0, Lcom/android/systemui/R$id;->keyguard_indication_text:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mIndicationText:Landroid/widget/TextView;

    .line 257
    sget v0, Lcom/android/systemui/R$id;->keyguard_indication_text_bottom:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mIndicationTextBottom:Landroid/widget/TextView;

    .line 258
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->keyguard_indication_margin_bottom:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mIndicationBottomMargin:I

    .line 260
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->default_burn_in_prevention_offset:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mBurnInYOffset:I

    .line 262
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->updateCameraVisibility()V

    .line 263
    const-class v0, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 264
    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 265
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 266
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setClipToPadding(Z)V

    .line 267
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->inflateCameraPreview()V

    .line 268
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mRightAffordanceView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 269
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLeftAffordanceView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 270
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->initAccessibility()V

    .line 271
    const-class v0, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/ActivityStarter;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 272
    const-class v0, Lcom/android/systemui/statusbar/policy/FlashlightController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/FlashlightController;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    .line 273
    const-class v0, Lcom/android/systemui/statusbar/policy/AccessibilityController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/AccessibilityController;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mAccessibilityController:Lcom/android/systemui/statusbar/policy/AccessibilityController;

    .line 274
    new-instance v0, Lcom/android/systemui/ActivityIntentHelper;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/systemui/ActivityIntentHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mActivityIntentHelper:Lcom/android/systemui/ActivityIntentHelper;

    .line 275
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->updateLeftAffordance()V

    return-void
.end method

.method public onLockScreenModeChanged(I)V
    .locals 0

    .line 925
    iput p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLockScreenMode:I

    .line 926
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setupControls()V

    return-void
.end method

.method public onStateChanged(ZZ)V
    .locals 1

    .line 450
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mRightAffordanceView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 451
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLeftAffordanceView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 452
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mRightAffordanceView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 453
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLeftAffordanceView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setFocusable(Z)V

    return-void
.end method

.method public onUnlockedChanged()V
    .locals 0

    .line 657
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->updateCameraVisibility()V

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .line 624
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onVisibilityChanged(Landroid/view/View;I)V

    if-ne p1, p0, :cond_0

    if-nez p2, :cond_0

    .line 626
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->updateCameraVisibility()V

    :cond_0
    return-void
.end method

.method public resolveCameraIntent()Landroid/content/pm/ResolveInfo;
    .locals 3

    .line 393
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getCameraIntent()Landroid/content/Intent;

    move-result-object p0

    .line 395
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    const/high16 v2, 0x10000

    .line 393
    invoke-virtual {v0, p0, v2, v1}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    return-object p0
.end method

.method public setAffordanceAlpha(F)V
    .locals 1

    .line 811
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLeftAffordanceView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 812
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mRightAffordanceView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 813
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mIndicationArea:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 814
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mAltLeftButton:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void
.end method

.method public setAffordanceHelper(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;)V
    .locals 0

    .line 376
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    return-void
.end method

.method public setAntiBurnInOffsetX(I)V
    .locals 1

    .line 800
    iget v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mBurnInXOffset:I

    if-ne v0, p1, :cond_0

    return-void

    .line 803
    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mBurnInXOffset:I

    .line 804
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mIndicationArea:Landroid/view/ViewGroup;

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setTranslationX(F)V

    return-void
.end method

.method public setDarkAmount(F)V
    .locals 1

    .line 562
    iget v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mDarkAmount:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    return-void

    .line 565
    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mDarkAmount:F

    .line 566
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->dozeTimeTick()V

    return-void
.end method

.method public setDozing(ZZ)V
    .locals 1

    .line 773
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mDozing:Z

    .line 775
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->updateCameraVisibility()V

    .line 776
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->updateLeftAffordanceIcon()V

    .line 777
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->updateControlsVisibility()V

    if-eqz p1, :cond_0

    .line 780
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mOverlayContainer:Landroid/view/ViewGroup;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 781
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mControlsDialog:Lcom/android/systemui/controls/ui/ControlsDialog;

    if-eqz p1, :cond_1

    .line 782
    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/ControlsDialog;->dismiss()V

    const/4 p1, 0x0

    .line 783
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mControlsDialog:Lcom/android/systemui/controls/ui/ControlsDialog;

    goto :goto_0

    .line 786
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mOverlayContainer:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    if-eqz p2, :cond_1

    .line 788
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->startFinishDozeAnimation()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setStatusBar(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    .line 371
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 372
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->updateCameraVisibility()V

    return-void
.end method

.method public setUserSetupComplete(Z)V
    .locals 0

    .line 380
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mUserSetupComplete:Z

    .line 381
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->updateCameraVisibility()V

    .line 382
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->updateLeftAffordanceIcon()V

    return-void
.end method

.method public setupControls(Lcom/android/systemui/controls/dagger/ControlsComponent;Lcom/android/systemui/broadcast/BroadcastDispatcher;)V
    .locals 0

    .line 892
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mControlsComponent:Lcom/android/systemui/controls/dagger/ControlsComponent;

    .line 893
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 894
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setupControls()V

    return-void
.end method

.method public startFinishDozeAnimation()V
    .locals 3

    .line 702
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mAltLeftButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    .line 703
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mAltLeftButton:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->startFinishDozeAnimationElement(Landroid/view/View;J)V

    .line 705
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLeftAffordanceView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 706
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLeftAffordanceView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->startFinishDozeAnimationElement(Landroid/view/View;J)V

    const-wide/16 v1, 0x30

    .line 709
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mRightAffordanceView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 710
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mRightAffordanceView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->startFinishDozeAnimationElement(Landroid/view/View;J)V

    :cond_2
    return-void
.end method

.method public unbindCameraPrewarmService(Z)V
    .locals 2

    .line 491
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mPrewarmBound:Z

    if-eqz v0, :cond_1

    .line 492
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mPrewarmMessenger:Landroid/os/Messenger;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    const/4 v1, 0x1

    .line 494
    :try_start_0
    invoke-static {p1, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "StatusBar/KeyguardBottomAreaView"

    const-string v1, "Error sending camera fired message"

    .line 497
    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 500
    :cond_0
    :goto_0
    iget-object p1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mPrewarmConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 p1, 0x0

    .line 501
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mPrewarmBound:Z

    :cond_1
    return-void
.end method

.method public updateLeftAffordance()V
    .locals 0

    .line 753
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->updateLeftAffordanceIcon()V

    .line 754
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->updateLeftPreview()V

    return-void
.end method
