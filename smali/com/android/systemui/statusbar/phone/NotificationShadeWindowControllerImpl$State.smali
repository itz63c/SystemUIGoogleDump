.class Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;
.super Ljava/lang/Object;
.source "NotificationShadeWindowControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "State"
.end annotation


# instance fields
.field mBackdropShowing:Z

.field mBackgroundBlurRadius:I

.field mBouncerShowing:Z

.field mComponentsForcingTopUi:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mDozing:Z

.field mForceCollapsed:Z

.field mForceDozeBrightness:Z

.field mForcePluginOpen:Z

.field mForceUserActivity:Z

.field mHeadsUpShowing:Z

.field mKeyguardFadingAway:Z

.field mKeyguardGoingAway:Z

.field mKeyguardNeedsInput:Z

.field mKeyguardOccluded:Z

.field mKeyguardShowing:Z

.field mLaunchingActivity:Z

.field mNotTouchable:Z

.field mNotificationShadeFocusable:Z

.field mPanelExpanded:Z

.field mPanelVisible:Z

.field mQsExpanded:Z

.field mRemoteInputActive:Z

.field mScrimsVisibility:I

.field mStatusBarState:I

.field mWallpaperSupportsAmbientMode:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 698
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 718
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mComponentsForcingTopUi:Ljava/util/Set;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$1;)V
    .locals 0

    .line 698
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)Z
    .locals 0

    .line 698
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->isKeyguardShowingAndNotOccluded()Z

    move-result p0

    return p0
.end method

.method private isKeyguardShowingAndNotOccluded()Z
    .locals 1

    .line 732
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mKeyguardShowing:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mKeyguardOccluded:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 7

    .line 737
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Window State {"

    .line 739
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    .line 740
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 742
    const-class v2, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;

    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    .line 745
    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v2, v4

    const-string v6, "  "

    .line 746
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 748
    :try_start_0
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": "

    .line 749
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 751
    invoke-virtual {v5, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 754
    :catch_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const-string/jumbo p0, "}"

    .line 756
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 758
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
