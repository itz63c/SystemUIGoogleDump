.class public Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;
.super Lcom/android/systemui/util/ViewController;
.source "KeyguardIndicationRotateTextViewController.java"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController$ShowNextIndication;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/util/ViewController<",
        "Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;",
        ">;",
        "Lcom/android/systemui/Dumpable;"
    }
.end annotation


# instance fields
.field private mCurrIndicationType:I

.field private final mExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field private final mIndicationMessages:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/systemui/keyguard/KeyguardIndication;",
            ">;"
        }
    .end annotation
.end field

.field private final mIndicationQueue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mInitialTextColorState:Landroid/content/res/ColorStateList;

.field private mIsDozing:Z

.field private final mMaxAlpha:F

.field private mShowNextIndicationRunnable:Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController$ShowNextIndication;

.field private final mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field private mStatusBarStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;


# direct methods
.method public static synthetic $r8$lambda$6Y9Oy47QcJ-cTN489A6Srsk1N_Y(ILjava/lang/Integer;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->lambda$updateIndication$0(ILjava/lang/Integer;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$baXwu0H6jAe2yuQyVjikQl8WsGc(ILjava/lang/Integer;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->lambda$showIndication$1(ILjava/lang/Integer;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;I)V
    .locals 2

    .line 75
    invoke-direct {p0, p1}, Lcom/android/systemui/util/ViewController;-><init>(Landroid/view/View;)V

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->mIndicationMessages:Ljava/util/Map;

    .line 64
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->mIndicationQueue:Ljava/util/List;

    const/4 v0, -0x1

    .line 65
    iput v0, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->mCurrIndicationType:I

    .line 228
    new-instance v1, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController$1;-><init>(Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;)V

    iput-object v1, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->mStatusBarStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

    .line 76
    invoke-virtual {p1}, Landroid/widget/TextView;->getAlpha()F

    move-result p1

    iput p1, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->mMaxAlpha:F

    .line 77
    iput-object p2, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->mExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 78
    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 79
    check-cast p1, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->mInitialTextColorState:Landroid/content/res/ColorStateList;

    .line 80
    iput-object p3, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 81
    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p1, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    invoke-virtual {p1, p4}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->setLockScreenMode(I)V

    .line 82
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;)F
    .locals 0

    .line 47
    iget p0, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->mMaxAlpha:F

    return p0
.end method

.method static synthetic access$100(Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;)Landroid/view/View;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;)Z
    .locals 0

    .line 47
    iget-boolean p0, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->mIsDozing:Z

    return p0
.end method

.method static synthetic access$202(Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;Z)Z
    .locals 0

    .line 47
    iput-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->mIsDozing:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;I)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->showIndication(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;)Ljava/util/List;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->mIndicationQueue:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;)Lcom/android/systemui/util/concurrency/DelayableExecutor;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->mExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    return-object p0
.end method

.method private cancelScheduledIndication()V
    .locals 1

    .line 222
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->mShowNextIndicationRunnable:Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController$ShowNextIndication;

    if-eqz v0, :cond_0

    .line 223
    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController$ShowNextIndication;->cancelDelayedExecution()V

    const/4 v0, 0x0

    .line 224
    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->mShowNextIndicationRunnable:Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController$ShowNextIndication;

    :cond_0
    return-void
.end method

.method private static synthetic lambda$showIndication$1(ILjava/lang/Integer;)Z
    .locals 0

    .line 196
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$updateIndication$0(ILjava/lang/Integer;)Z
    .locals 0

    .line 110
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private scheduleShowNextIndication()V
    .locals 3

    .line 217
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->cancelScheduledIndication()V

    .line 218
    new-instance v0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController$ShowNextIndication;

    const-wide/16 v1, 0xdac

    invoke-direct {v0, p0, v1, v2}, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController$ShowNextIndication;-><init>(Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;J)V

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->mShowNextIndicationRunnable:Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController$ShowNextIndication;

    return-void
.end method

.method private showIndication(I)V
    .locals 3

    .line 193
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->cancelScheduledIndication()V

    .line 195
    iput p1, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->mCurrIndicationType:I

    .line 196
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->mIndicationQueue:Ljava/util/List;

    new-instance v1, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController-$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController-$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    .line 197
    iget v0, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->mCurrIndicationType:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 198
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 201
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->mIndicationQueue:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->mIndicationMessages:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/keyguard/KeyguardIndication;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->switchIndication(Lcom/android/systemui/keyguard/KeyguardIndication;)V

    .line 207
    iget p1, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->mCurrIndicationType:I

    if-eq p1, v1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->mIndicationQueue:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    if-le p1, v0, :cond_1

    .line 208
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->scheduleShowNextIndication()V

    :cond_1
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    const-string p1, "KeyguardIndicationRotatingTextViewController:"

    .line 280
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 281
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "    currentMessage="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p3, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    invoke-virtual {p3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 282
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "    dozing:"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->mIsDozing:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 283
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "    queue:"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->mIndicationQueue:Ljava/util/List;

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 284
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "    showNextIndicationRunnable:"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->mShowNextIndicationRunnable:Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController$ShowNextIndication;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 286
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->hasIndications()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "    All messages:"

    .line 287
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 288
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->mIndicationMessages:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    .line 289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "        type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->mIndicationMessages:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {v1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public hasIndications()Z
    .locals 0

    .line 184
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->mIndicationMessages:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hideIndication(I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 152
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->updateIndication(ILcom/android/systemui/keyguard/KeyguardIndication;Z)V

    return-void
.end method

.method public hideTransient()V
    .locals 1

    const/4 v0, 0x5

    .line 177
    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->hideIndication(I)V

    return-void
.end method

.method protected isNextIndicationScheduled()Z
    .locals 0

    .line 213
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->mShowNextIndicationRunnable:Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController$ShowNextIndication;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected onViewAttached()V
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->mStatusBarStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    return-void
.end method

.method protected onViewDetached()V
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->mStatusBarStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->removeCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 93
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->cancelScheduledIndication()V

    return-void
.end method

.method public showTransient(Ljava/lang/CharSequence;Z)V
    .locals 1

    .line 163
    new-instance v0, Lcom/android/systemui/keyguard/KeyguardIndication$Builder;

    invoke-direct {v0}, Lcom/android/systemui/keyguard/KeyguardIndication$Builder;-><init>()V

    .line 165
    invoke-virtual {v0, p1}, Lcom/android/systemui/keyguard/KeyguardIndication$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/android/systemui/keyguard/KeyguardIndication$Builder;

    move-result-object p1

    if-eqz p2, :cond_0

    .line 167
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/android/settingslib/Utils;->getColorError(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object p2

    goto :goto_0

    .line 168
    :cond_0
    iget-object p2, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->mInitialTextColorState:Landroid/content/res/ColorStateList;

    .line 166
    :goto_0
    invoke-virtual {p1, p2}, Lcom/android/systemui/keyguard/KeyguardIndication$Builder;->setTextColor(Landroid/content/res/ColorStateList;)Lcom/android/systemui/keyguard/KeyguardIndication$Builder;

    move-result-object p1

    .line 169
    invoke-virtual {p1}, Lcom/android/systemui/keyguard/KeyguardIndication$Builder;->build()Lcom/android/systemui/keyguard/KeyguardIndication;

    move-result-object p1

    const/4 p2, 0x1

    const/4 v0, 0x5

    .line 163
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->updateIndication(ILcom/android/systemui/keyguard/KeyguardIndication;Z)V

    return-void
.end method

.method public updateIndication(ILcom/android/systemui/keyguard/KeyguardIndication;Z)V
    .locals 5

    .line 106
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->mIndicationMessages:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz p2, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    if-nez v3, :cond_2

    .line 109
    iget-object p2, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->mIndicationMessages:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    iget-object p2, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->mIndicationQueue:Ljava/util/List;

    new-instance v0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController-$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController-$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {p2, v0}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    goto :goto_2

    :cond_2
    if-nez v0, :cond_3

    .line 113
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->mIndicationQueue:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->mIndicationMessages:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    :goto_2
    iget-boolean p2, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->mIsDozing:Z

    if-eqz p2, :cond_4

    return-void

    :cond_4
    const/4 p2, -0x1

    if-nez p3, :cond_6

    .line 123
    iget v0, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->mCurrIndicationType:I

    if-eq v0, p2, :cond_6

    if-ne v0, p1, :cond_5

    goto :goto_3

    :cond_5
    move v1, v2

    :cond_6
    :goto_3
    if-eqz v3, :cond_9

    if-eqz v1, :cond_7

    .line 128
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->showIndication(I)V

    goto :goto_4

    .line 129
    :cond_7
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->isNextIndicationScheduled()Z

    move-result p1

    if-nez p1, :cond_8

    .line 130
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->scheduleShowNextIndication()V

    :cond_8
    :goto_4
    return-void

    .line 135
    :cond_9
    iget v0, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->mCurrIndicationType:I

    if-ne v0, p1, :cond_b

    if-nez v3, :cond_b

    if-eqz p3, :cond_b

    .line 138
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->mShowNextIndicationRunnable:Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController$ShowNextIndication;

    if-eqz p1, :cond_a

    .line 139
    invoke-virtual {p1}, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController$ShowNextIndication;->runImmediately()V

    goto :goto_5

    .line 141
    :cond_a
    invoke-direct {p0, p2}, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->showIndication(I)V

    :cond_b
    :goto_5
    return-void
.end method
