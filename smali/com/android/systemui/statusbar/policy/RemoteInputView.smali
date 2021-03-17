.class public Lcom/android/systemui/statusbar/policy/RemoteInputView;
.super Landroid/widget/LinearLayout;
.source "RemoteInputView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;,
        Lcom/android/systemui/statusbar/policy/RemoteInputView$SendButtonTextWatcher;,
        Lcom/android/systemui/statusbar/policy/RemoteInputView$EditorActionHandler;
    }
.end annotation


# static fields
.field public static final VIEW_TAG:Ljava/lang/Object;


# instance fields
.field private mBouncerChecker:Lcom/android/systemui/statusbar/NotificationRemoteInputManager$BouncerChecker;

.field private mController:Lcom/android/systemui/statusbar/RemoteInputController;

.field private mEditText:Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;

.field private final mEditTextFocusChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View$OnFocusChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mEditorActionHandler:Landroid/widget/TextView$OnEditorActionListener;

.field private mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

.field private mOnVisibilityChangedListener:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingIntent:Landroid/app/PendingIntent;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mRemoteInput:Landroid/app/RemoteInput;

.field private final mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

.field private mRemoteInputQuickSettingsDisabler:Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;

.field private mRemoteInputs:[Landroid/app/RemoteInput;

.field private mRemoved:Z

.field private mResetting:Z

.field private mRevealCx:I

.field private mRevealCy:I

.field private mRevealR:I

.field private mSendButton:Landroid/widget/ImageButton;

.field private mStatusBarManagerService:Lcom/android/internal/statusbar/IStatusBarService;

.field private final mTextWatcher:Lcom/android/systemui/statusbar/policy/RemoteInputView$SendButtonTextWatcher;

.field public final mToken:Ljava/lang/Object;

.field private mWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 98
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->VIEW_TAG:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 131
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 100
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mToken:Ljava/lang/Object;

    .line 105
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEditTextFocusChangeListeners:Ljava/util/List;

    .line 132
    new-instance p1, Lcom/android/systemui/statusbar/policy/RemoteInputView$SendButtonTextWatcher;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/statusbar/policy/RemoteInputView$SendButtonTextWatcher;-><init>(Lcom/android/systemui/statusbar/policy/RemoteInputView;Lcom/android/systemui/statusbar/policy/RemoteInputView$1;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mTextWatcher:Lcom/android/systemui/statusbar/policy/RemoteInputView$SendButtonTextWatcher;

    .line 133
    new-instance p1, Lcom/android/systemui/statusbar/policy/RemoteInputView$EditorActionHandler;

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/statusbar/policy/RemoteInputView$EditorActionHandler;-><init>(Lcom/android/systemui/statusbar/policy/RemoteInputView;Lcom/android/systemui/statusbar/policy/RemoteInputView$1;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEditorActionHandler:Landroid/widget/TextView$OnEditorActionListener;

    .line 134
    const-class p1, Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mRemoteInputQuickSettingsDisabler:Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;

    .line 135
    const-class p1, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    const-string p1, "statusbar"

    .line 137
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    .line 136
    invoke-static {p1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mStatusBarManagerService:Lcom/android/internal/statusbar/IStatusBarService;

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/policy/RemoteInputView;)V
    .locals 0

    .line 93
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->updateSendButton()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/policy/RemoteInputView;Z)V
    .locals 0

    .line 93
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->onDefocus(Z)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/systemui/statusbar/policy/RemoteInputView;Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;Z)V
    .locals 0

    .line 93
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->onEditTextFocusChanged(Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;Z)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/systemui/statusbar/policy/RemoteInputView;)Z
    .locals 0

    .line 93
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mRemoved:Z

    return p0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/RemoteInputView;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/policy/RemoteInputView;)Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEditText:Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/policy/RemoteInputView;)Lcom/android/systemui/statusbar/RemoteInputController;
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mController:Lcom/android/systemui/statusbar/RemoteInputController;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/policy/RemoteInputView;)Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/policy/RemoteInputView;Landroid/content/Intent;)V
    .locals 0

    .line 93
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->sendRemoteInput(Landroid/content/Intent;)V

    return-void
.end method

.method private static computeTextOperationUser(Landroid/os/UserHandle;)Landroid/os/UserHandle;
    .locals 1

    .line 382
    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, p0}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 383
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p0

    invoke-static {p0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static inflate(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/RemoteInputController;)Lcom/android/systemui/statusbar/policy/RemoteInputView;
    .locals 2

    .line 252
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$layout;->remote_input:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 253
    iput-object p3, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mController:Lcom/android/systemui/statusbar/RemoteInputController;

    .line 254
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 255
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object p1

    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->computeTextOperationUser(Landroid/os/UserHandle;)Landroid/os/UserHandle;

    move-result-object p1

    .line 256
    iget-object p2, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEditText:Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;

    iput-object p1, p2, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->mUser:Landroid/os/UserHandle;

    .line 257
    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setTextOperationUser(Landroid/os/UserHandle;)V

    .line 258
    sget-object p1, Lcom/android/systemui/statusbar/policy/RemoteInputView;->VIEW_TAG:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    return-object p0
.end method

.method private onDefocus(Z)V
    .locals 4

    .line 279
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mController:Lcom/android/systemui/statusbar/RemoteInputController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mToken:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/RemoteInputController;->removeRemoteInput(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/Object;)V

    .line 280
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEditText:Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->remoteInputText:Ljava/lang/CharSequence;

    .line 284
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mRemoved:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 285
    iget p1, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mRevealR:I

    if-lez p1, :cond_0

    .line 286
    iget v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mRevealCx:I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mRevealCy:I

    int-to-float p1, p1

    const/4 v3, 0x0

    invoke-static {p0, v0, v2, p1, v3}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object p1

    .line 288
    sget-object v0, Lcom/android/systemui/Interpolators;->FAST_OUT_LINEAR_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v2, 0x96

    .line 289
    invoke-virtual {p1, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 290
    new-instance v0, Lcom/android/systemui/statusbar/policy/RemoteInputView$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/RemoteInputView$2;-><init>(Lcom/android/systemui/statusbar/policy/RemoteInputView;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 299
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    .line 301
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 302
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    if-eqz p1, :cond_1

    .line 303
    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->setRemoteInputVisible(Z)V

    .line 308
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mRemoteInputQuickSettingsDisabler:Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;

    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;->setRemoteInputActive(Z)V

    .line 310
    iget-object p1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    const/16 v0, 0x190

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 311
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p0

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object p0

    .line 310
    invoke-static {p1, v0, p0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;ILjava/lang/String;)V

    return-void
.end method

.method private onEditTextFocusChanged(Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;Z)V
    .locals 1

    .line 597
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEditTextFocusChangeListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View$OnFocusChangeListener;

    .line 598
    invoke-interface {v0, p1, p2}, Landroid/view/View$OnFocusChangeListener;->onFocusChange(Landroid/view/View;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private reset()V
    .locals 4

    const/4 v0, 0x1

    .line 420
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mResetting:Z

    .line 421
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEditText:Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2}, Landroid/text/SpannedString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannedString;

    move-result-object v2

    iput-object v2, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->remoteInputTextWhenReset:Ljava/lang/CharSequence;

    .line 423
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEditText:Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->clear()V

    .line 424
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEditText:Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 425
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mSendButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 426
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 427
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mController:Lcom/android/systemui/statusbar/RemoteInputController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mToken:Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/statusbar/RemoteInputController;->removeSpinning(Ljava/lang/String;Ljava/lang/Object;)V

    .line 428
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->updateSendButton()V

    .line 429
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->onDefocus(Z)V

    .line 431
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mResetting:Z

    return-void
.end method

.method private sendRemoteInput(Landroid/content/Intent;)V
    .locals 4

    .line 209
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mBouncerChecker:Lcom/android/systemui/statusbar/NotificationRemoteInputManager$BouncerChecker;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$BouncerChecker;->showBouncerIfNecessary()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEditText:Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;

    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->access$500(Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;)V

    return-void

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEditText:Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 215
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mSendButton:Landroid/widget/ImageButton;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 216
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 217
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->lastRemoteInputSent:J

    .line 218
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mController:Lcom/android/systemui/statusbar/RemoteInputController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mToken:Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/statusbar/RemoteInputController;->addSpinning(Ljava/lang/String;Ljava/lang/Object;)V

    .line 219
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mController:Lcom/android/systemui/statusbar/RemoteInputController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mToken:Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/statusbar/RemoteInputController;->removeRemoteInput(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/Object;)V

    .line 220
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEditText:Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->mShowImeOnInputConnection:Z

    .line 221
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mController:Lcom/android/systemui/statusbar/RemoteInputController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/RemoteInputController;->remoteInputSent(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 222
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->setHasSentReply()V

    .line 229
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v2, Landroid/content/pm/ShortcutManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ShortcutManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 230
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 231
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    .line 229
    invoke-virtual {v0, v2, v3}, Landroid/content/pm/ShortcutManager;->onApplicationActive(Ljava/lang/String;I)V

    .line 233
    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    const/16 v2, 0x18e

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 234
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 233
    invoke-static {v0, v2, v3}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;ILjava/lang/String;)V

    .line 236
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mPendingIntent:Landroid/app/PendingIntent;

    iget-object v2, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2, v1, p1}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "RemoteInput"

    const-string v1, "Unable to send remote input result"

    .line 238
    invoke-static {v0, v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 239
    iget-object p1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    const/16 v0, 0x18f

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 240
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p0

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object p0

    .line 239
    invoke-static {p1, v0, p0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method private updateSendButton()V
    .locals 1

    .line 446
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mSendButton:Landroid/widget/ImageButton;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEditText:Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method public addOnEditTextFocusChangedListener(Landroid/view/View$OnFocusChangeListener;)V
    .locals 0

    .line 583
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEditTextFocusChangeListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public close()V
    .locals 1

    .line 450
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEditText:Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->access$800(Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;Z)V

    return-void
.end method

.method public dispatchFinishTemporaryDetach()V
    .locals 3

    .line 543
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isAttachedToWindow()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 544
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEditText:Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/LinearLayout;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 546
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEditText:Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;

    invoke-virtual {p0, v0, v1}, Landroid/widget/LinearLayout;->removeDetachedView(Landroid/view/View;Z)V

    .line 548
    :goto_0
    invoke-super {p0}, Landroid/widget/LinearLayout;->dispatchFinishTemporaryDetach()V

    return-void
.end method

.method public dispatchStartTemporaryDetach()V
    .locals 1

    .line 535
    invoke-super {p0}, Landroid/widget/LinearLayout;->dispatchStartTemporaryDetach()V

    .line 538
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEditText:Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->detachViewFromParent(Landroid/view/View;)V

    return-void
.end method

.method public editTextHasFocus()Z
    .locals 0

    .line 593
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEditText:Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/EditText;->hasFocus()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public focus()V
    .locals 4

    .line 387
    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 388
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x18d

    .line 387
    invoke-static {v0, v2, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;ILjava/lang/String;)V

    const/4 v0, 0x0

    .line 390
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 391
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 392
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->setRemoteInputVisible(Z)V

    .line 394
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEditText:Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->setInnerFocusable(Z)V

    .line 395
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEditText:Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->mShowImeOnInputConnection:Z

    .line 396
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->remoteInputText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 397
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEditText:Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 398
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEditText:Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 399
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mController:Lcom/android/systemui/statusbar/RemoteInputController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mToken:Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/statusbar/RemoteInputController;->addRemoteInput(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/Object;)V

    .line 401
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mRemoteInputQuickSettingsDisabler:Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;->setRemoteInputActive(Z)V

    .line 403
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->updateSendButton()V

    return-void
.end method

.method public focusAnimated()V
    .locals 4

    .line 371
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 372
    iget v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mRevealCx:I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mRevealCy:I

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mRevealR:I

    int-to-float v3, v3

    invoke-static {p0, v0, v1, v2, v3}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v0

    const-wide/16 v1, 0x168

    .line 374
    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 375
    sget-object v1, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 376
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 378
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->focus()V

    return-void
.end method

.method public getPendingIntent()Landroid/app/PendingIntent;
    .locals 0

    .line 520
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mPendingIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 0

    .line 245
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEditText:Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    return-object p0
.end method

.method public isActive()Z
    .locals 1

    .line 467
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEditText:Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEditText:Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->isEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSending()Z
    .locals 2

    .line 568
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mController:Lcom/android/systemui/statusbar/RemoteInputController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mToken:Ljava/lang/Object;

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/statusbar/RemoteInputController;->isSpinning(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 316
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 317
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEditText:Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;

    invoke-static {v0, p0}, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->access$702(Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;Lcom/android/systemui/statusbar/policy/RemoteInputView;)Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 318
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEditText:Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEditorActionHandler:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 319
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEditText:Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mTextWatcher:Lcom/android/systemui/statusbar/policy/RemoteInputView$SendButtonTextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 320
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isChangingPosition()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 321
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEditText:Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocusable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 322
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEditText:Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->requestFocus()Z

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 265
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mSendButton:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_0

    .line 266
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->prepareRemoteInputFromText()Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->sendRemoteInput(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .line 329
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 330
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEditText:Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mTextWatcher:Lcom/android/systemui/statusbar/policy/RemoteInputView$SendButtonTextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 331
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEditText:Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 332
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEditText:Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->access$702(Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;Lcom/android/systemui/statusbar/policy/RemoteInputView;)Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 333
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isChangingPosition()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isTemporarilyDetached()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 336
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mController:Lcom/android/systemui/statusbar/RemoteInputController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mToken:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/RemoteInputController;->removeRemoteInput(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/Object;)V

    .line 337
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mController:Lcom/android/systemui/statusbar/RemoteInputController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mToken:Ljava/lang/Object;

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/statusbar/RemoteInputController;->removeSpinning(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .line 142
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 144
    sget v0, Lcom/android/systemui/R$id;->remote_input_progress:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mProgressBar:Landroid/widget/ProgressBar;

    .line 146
    sget v0, Lcom/android/systemui/R$id;->remote_input_send:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mSendButton:Landroid/widget/ImageButton;

    .line 147
    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x0

    .line 149
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEditText:Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;

    .line 150
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->setInnerFocusable(Z)V

    .line 151
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEditText:Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;

    new-instance v2, Lcom/android/systemui/statusbar/policy/RemoteInputView$1;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView$1;-><init>(Lcom/android/systemui/statusbar/policy/RemoteInputView;I)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setWindowInsetsAnimationCallback(Landroid/view/WindowInsetsAnimation$Callback;)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 455
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 456
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mController:Lcom/android/systemui/statusbar/RemoteInputController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/RemoteInputController;->requestDisallowLongPressAndDismiss()V

    .line 458
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onNotificationUpdateOrReset()V
    .locals 2

    .line 407
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 411
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->reset()V

    .line 414
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->isActive()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    if-eqz p0, :cond_2

    .line 415
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->setRemoteInputVisible(Z)V

    :cond_2
    return-void
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .line 436
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mResetting:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEditText:Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;

    if-ne p1, v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 442
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p0

    return p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 272
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 p0, 0x1

    return p0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .line 561
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onVisibilityChanged(Landroid/view/View;I)V

    if-ne p1, p0, :cond_1

    .line 562
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mOnVisibilityChangedListener:Ljava/util/function/Consumer;

    if-eqz p0, :cond_1

    if-nez p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 563
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method protected prepareRemoteInputFromData(Ljava/lang/String;Landroid/net/Uri;)Landroid/content/Intent;
    .locals 4

    .line 195
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 196
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mController:Lcom/android/systemui/statusbar/RemoteInputController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lcom/android/systemui/statusbar/RemoteInputController;->grantInlineReplyUriPermission(Landroid/service/notification/StatusBarNotification;Landroid/net/Uri;)V

    .line 198
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    .line 199
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mRemoteInput:Landroid/app/RemoteInput;

    invoke-static {v2, v1, v0}, Landroid/app/RemoteInput;->addDataResultToIntent(Landroid/app/RemoteInput;Landroid/content/Intent;Ljava/util/Map;)V

    .line 201
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v2, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/systemui/R$string;->remote_input_image_insertion_text:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->remoteInputText:Ljava/lang/CharSequence;

    .line 202
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->remoteInputMimeType:Ljava/lang/String;

    .line 203
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->remoteInputUri:Landroid/net/Uri;

    return-object v1
.end method

.method protected prepareRemoteInputFromText()Landroid/content/Intent;
    .locals 3

    .line 175
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 176
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mRemoteInput:Landroid/app/RemoteInput;

    invoke-virtual {v1}, Landroid/app/RemoteInput;->getResultKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEditText:Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    .line 178
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mRemoteInputs:[Landroid/app/RemoteInput;

    invoke-static {v2, v1, v0}, Landroid/app/RemoteInput;->addResultsToIntent([Landroid/app/RemoteInput;Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 181
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEditText:Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->remoteInputText:Ljava/lang/CharSequence;

    .line 182
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->remoteInputUri:Landroid/net/Uri;

    .line 183
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->remoteInputMimeType:Ljava/lang/String;

    .line 185
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->editedSuggestionInfo:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry$EditedSuggestionInfo;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    .line 186
    invoke-static {v1, p0}, Landroid/app/RemoteInput;->setResultsSource(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    .line 188
    invoke-static {v1, p0}, Landroid/app/RemoteInput;->setResultsSource(Landroid/content/Intent;I)V

    :goto_0
    return-object v1
.end method

.method public removeOnEditTextFocusChangedListener(Landroid/view/View$OnFocusChangeListener;)V
    .locals 0

    .line 588
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEditTextFocusChangeListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public requestScrollTo()Z
    .locals 1

    .line 462
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mController:Lcom/android/systemui/statusbar/RemoteInputController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/RemoteInputController;->lockScrollTo(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    const/4 p0, 0x1

    return p0
.end method

.method public setBouncerChecker(Lcom/android/systemui/statusbar/NotificationRemoteInputManager$BouncerChecker;)V
    .locals 0

    .line 578
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mBouncerChecker:Lcom/android/systemui/statusbar/NotificationRemoteInputManager$BouncerChecker;

    return-void
.end method

.method public setEditTextContent(Ljava/lang/CharSequence;)V
    .locals 0

    .line 367
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEditText:Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setOnVisibilityChangedListener(Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 556
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mOnVisibilityChangedListener:Ljava/util/function/Consumer;

    return-void
.end method

.method public setPendingIntent(Landroid/app/PendingIntent;)V
    .locals 0

    .line 341
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mPendingIntent:Landroid/app/PendingIntent;

    return-void
.end method

.method public setRemoteInput([Landroid/app/RemoteInput;Landroid/app/RemoteInput;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry$EditedSuggestionInfo;)V
    .locals 1

    .line 354
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mRemoteInputs:[Landroid/app/RemoteInput;

    .line 355
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mRemoteInput:Landroid/app/RemoteInput;

    .line 356
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEditText:Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;

    invoke-virtual {p2}, Landroid/app/RemoteInput;->getLabel()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 357
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEditText:Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;

    invoke-virtual {p2}, Landroid/app/RemoteInput;->getAllowedDataTypes()Ljava/util/Set;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->setSupportedMimeTypes(Ljava/util/Collection;)V

    .line 359
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->editedSuggestionInfo:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry$EditedSuggestionInfo;

    if-eqz p3, :cond_0

    .line 361
    iget-object p1, p3, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry$EditedSuggestionInfo;->originalText:Ljava/lang/CharSequence;

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->remoteInputText:Ljava/lang/CharSequence;

    :cond_0
    return-void
.end method

.method public setRemoved()V
    .locals 1

    const/4 v0, 0x1

    .line 524
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mRemoved:Z

    return-void
.end method

.method public setRevealParameters(III)V
    .locals 0

    .line 528
    iput p1, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mRevealCx:I

    .line 529
    iput p2, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mRevealCy:I

    .line 530
    iput p3, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mRevealR:I

    return-void
.end method

.method public setWrapper(Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;)V
    .locals 0

    .line 552
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    return-void
.end method

.method public stealFocusFrom(Lcom/android/systemui/statusbar/policy/RemoteInputView;)V
    .locals 3

    .line 471
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->close()V

    .line 472
    iget-object v0, p1, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->setPendingIntent(Landroid/app/PendingIntent;)V

    .line 473
    iget-object v0, p1, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mRemoteInputs:[Landroid/app/RemoteInput;

    iget-object v1, p1, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mRemoteInput:Landroid/app/RemoteInput;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->editedSuggestionInfo:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry$EditedSuggestionInfo;

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->setRemoteInput([Landroid/app/RemoteInput;Landroid/app/RemoteInput;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry$EditedSuggestionInfo;)V

    .line 474
    iget v0, p1, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mRevealCx:I

    iget v1, p1, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mRevealCy:I

    iget p1, p1, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mRevealR:I

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->setRevealParameters(III)V

    .line 475
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->focus()V

    return-void
.end method

.method public updatePendingIntentFromActions([Landroid/app/Notification$Action;)Z
    .locals 12

    .line 485
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mPendingIntent:Landroid/app/PendingIntent;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    if-nez p1, :cond_0

    goto :goto_3

    .line 488
    :cond_0
    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 493
    :cond_1
    array-length v2, p1

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_8

    aget-object v4, p1, v3

    .line 494
    invoke-virtual {v4}, Landroid/app/Notification$Action;->getRemoteInputs()[Landroid/app/RemoteInput;

    move-result-object v5

    .line 495
    iget-object v6, v4, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    if-eqz v6, :cond_7

    if-nez v5, :cond_2

    goto :goto_2

    .line 498
    :cond_2
    invoke-virtual {v6}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v6

    .line 499
    invoke-virtual {v0, v6}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v6

    if-nez v6, :cond_3

    goto :goto_2

    .line 504
    :cond_3
    array-length v6, v5

    const/4 v7, 0x0

    move v8, v1

    move-object v9, v7

    :goto_1
    if-ge v8, v6, :cond_5

    aget-object v10, v5, v8

    .line 505
    invoke-virtual {v10}, Landroid/app/RemoteInput;->getAllowFreeFormInput()Z

    move-result v11

    if-eqz v11, :cond_4

    move-object v9, v10

    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_5
    if-nez v9, :cond_6

    goto :goto_2

    .line 512
    :cond_6
    iget-object p1, v4, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->setPendingIntent(Landroid/app/PendingIntent;)V

    .line 513
    invoke-virtual {p0, v5, v9, v7}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->setRemoteInput([Landroid/app/RemoteInput;Landroid/app/RemoteInput;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry$EditedSuggestionInfo;)V

    const/4 p0, 0x1

    return p0

    :cond_7
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_8
    :goto_3
    return v1
.end method
