.class public Lcom/google/android/systemui/assist/OpaEnabledReceiver;
.super Ljava/lang/Object;
.source "OpaEnabledReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/systemui/assist/OpaEnabledReceiver$OpaEnabledBroadcastReceiver;,
        Lcom/google/android/systemui/assist/OpaEnabledReceiver$AssistantContentObserver;
    }
.end annotation


# instance fields
.field private final mBgExecutor:Ljava/util/concurrent/Executor;

.field private final mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mContentObserver:Landroid/database/ContentObserver;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private final mFgExecutor:Ljava/util/concurrent/Executor;

.field private mIsAGSAAssistant:Z

.field private mIsOpaEligible:Z

.field private mIsOpaEnabled:Z

.field private final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/systemui/assist/OpaEnabledListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mOpaEnabledSettings:Lcom/google/android/systemui/assist/OpaEnabledSettings;


# direct methods
.method public static synthetic $r8$lambda$WA8Gl_74GsAM27iySoy1gPMvA8Y(Lcom/google/android/systemui/assist/OpaEnabledReceiver;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/systemui/assist/OpaEnabledReceiver;->lambda$updateOpaEnabledState$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$cw1XWsgK36RtyWtHm86iCLr6EGI(Landroid/content/BroadcastReceiver$PendingResult;)V
    .locals 0

    invoke-static {p0}, Lcom/google/android/systemui/assist/OpaEnabledReceiver;->lambda$updateOpaEnabledState$1(Landroid/content/BroadcastReceiver$PendingResult;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rnwhJzbseVAihvQf83AHwKyCovU(Lcom/google/android/systemui/assist/OpaEnabledReceiver;ZLandroid/content/BroadcastReceiver$PendingResult;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/systemui/assist/OpaEnabledReceiver;->lambda$updateOpaEnabledState$2(ZLandroid/content/BroadcastReceiver$PendingResult;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/broadcast/BroadcastDispatcher;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/google/android/systemui/assist/OpaEnabledSettings;)V
    .locals 2

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lcom/google/android/systemui/assist/OpaEnabledReceiver$OpaEnabledBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/systemui/assist/OpaEnabledReceiver$OpaEnabledBroadcastReceiver;-><init>(Lcom/google/android/systemui/assist/OpaEnabledReceiver;Lcom/google/android/systemui/assist/OpaEnabledReceiver$1;)V

    iput-object v0, p0, Lcom/google/android/systemui/assist/OpaEnabledReceiver;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/systemui/assist/OpaEnabledReceiver;->mListeners:Ljava/util/List;

    .line 56
    iput-object p1, p0, Lcom/google/android/systemui/assist/OpaEnabledReceiver;->mContext:Landroid/content/Context;

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/systemui/assist/OpaEnabledReceiver;->mContentResolver:Landroid/content/ContentResolver;

    .line 58
    new-instance v0, Lcom/google/android/systemui/assist/OpaEnabledReceiver$AssistantContentObserver;

    invoke-direct {v0, p0, p1}, Lcom/google/android/systemui/assist/OpaEnabledReceiver$AssistantContentObserver;-><init>(Lcom/google/android/systemui/assist/OpaEnabledReceiver;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/systemui/assist/OpaEnabledReceiver;->mContentObserver:Landroid/database/ContentObserver;

    .line 59
    iput-object p2, p0, Lcom/google/android/systemui/assist/OpaEnabledReceiver;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 60
    iput-object p3, p0, Lcom/google/android/systemui/assist/OpaEnabledReceiver;->mFgExecutor:Ljava/util/concurrent/Executor;

    .line 61
    iput-object p4, p0, Lcom/google/android/systemui/assist/OpaEnabledReceiver;->mBgExecutor:Ljava/util/concurrent/Executor;

    .line 62
    iput-object p5, p0, Lcom/google/android/systemui/assist/OpaEnabledReceiver;->mOpaEnabledSettings:Lcom/google/android/systemui/assist/OpaEnabledSettings;

    const/4 p1, 0x0

    .line 64
    invoke-direct {p0, p1}, Lcom/google/android/systemui/assist/OpaEnabledReceiver;->updateOpaEnabledState(Z)V

    .line 66
    invoke-direct {p0}, Lcom/google/android/systemui/assist/OpaEnabledReceiver;->registerContentObserver()V

    const/4 p1, -0x2

    .line 67
    invoke-direct {p0, p1}, Lcom/google/android/systemui/assist/OpaEnabledReceiver;->registerEnabledReceiver(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/systemui/assist/OpaEnabledReceiver;Z)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/google/android/systemui/assist/OpaEnabledReceiver;->updateOpaEnabledState(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/systemui/assist/OpaEnabledReceiver;)Lcom/google/android/systemui/assist/OpaEnabledSettings;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/google/android/systemui/assist/OpaEnabledReceiver;->mOpaEnabledSettings:Lcom/google/android/systemui/assist/OpaEnabledSettings;

    return-object p0
.end method

.method static synthetic access$300(Lcom/google/android/systemui/assist/OpaEnabledReceiver;ZLandroid/content/BroadcastReceiver$PendingResult;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/google/android/systemui/assist/OpaEnabledReceiver;->updateOpaEnabledState(ZLandroid/content/BroadcastReceiver$PendingResult;)V

    return-void
.end method

.method private dispatchOpaEnabledState(Landroid/content/Context;)V
    .locals 5

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Dispatching OPA eligble = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/google/android/systemui/assist/OpaEnabledReceiver;->mIsOpaEligible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "; AGSA = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/google/android/systemui/assist/OpaEnabledReceiver;->mIsAGSAAssistant:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "; OPA enabled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/google/android/systemui/assist/OpaEnabledReceiver;->mIsOpaEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpaEnabledReceiver"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 131
    :goto_0
    iget-object v1, p0, Lcom/google/android/systemui/assist/OpaEnabledReceiver;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 132
    iget-object v1, p0, Lcom/google/android/systemui/assist/OpaEnabledReceiver;->mListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/systemui/assist/OpaEnabledListener;

    iget-boolean v2, p0, Lcom/google/android/systemui/assist/OpaEnabledReceiver;->mIsOpaEligible:Z

    iget-boolean v3, p0, Lcom/google/android/systemui/assist/OpaEnabledReceiver;->mIsAGSAAssistant:Z

    iget-boolean v4, p0, Lcom/google/android/systemui/assist/OpaEnabledReceiver;->mIsOpaEnabled:Z

    invoke-interface {v1, p1, v2, v3, v4}, Lcom/google/android/systemui/assist/OpaEnabledListener;->onOpaEnabledReceived(Landroid/content/Context;ZZZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private synthetic lambda$updateOpaEnabledState$0()V
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/google/android/systemui/assist/OpaEnabledReceiver;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/google/android/systemui/assist/OpaEnabledReceiver;->dispatchOpaEnabledState(Landroid/content/Context;)V

    return-void
.end method

.method private static synthetic lambda$updateOpaEnabledState$1(Landroid/content/BroadcastReceiver$PendingResult;)V
    .locals 0

    .line 116
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    return-void
.end method

.method private synthetic lambda$updateOpaEnabledState$2(ZLandroid/content/BroadcastReceiver$PendingResult;)V
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/google/android/systemui/assist/OpaEnabledReceiver;->mOpaEnabledSettings:Lcom/google/android/systemui/assist/OpaEnabledSettings;

    invoke-virtual {v0}, Lcom/google/android/systemui/assist/OpaEnabledSettings;->isOpaEligible()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/systemui/assist/OpaEnabledReceiver;->mIsOpaEligible:Z

    .line 107
    iget-object v0, p0, Lcom/google/android/systemui/assist/OpaEnabledReceiver;->mOpaEnabledSettings:Lcom/google/android/systemui/assist/OpaEnabledSettings;

    invoke-virtual {v0}, Lcom/google/android/systemui/assist/OpaEnabledSettings;->isAgsaAssistant()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/systemui/assist/OpaEnabledReceiver;->mIsAGSAAssistant:Z

    .line 108
    iget-object v0, p0, Lcom/google/android/systemui/assist/OpaEnabledReceiver;->mOpaEnabledSettings:Lcom/google/android/systemui/assist/OpaEnabledSettings;

    invoke-virtual {v0}, Lcom/google/android/systemui/assist/OpaEnabledSettings;->isOpaEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/systemui/assist/OpaEnabledReceiver;->mIsOpaEnabled:Z

    if-eqz p1, :cond_0

    .line 111
    iget-object p1, p0, Lcom/google/android/systemui/assist/OpaEnabledReceiver;->mFgExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/google/android/systemui/assist/OpaEnabledReceiver-$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/assist/OpaEnabledReceiver-$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/systemui/assist/OpaEnabledReceiver;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    if-eqz p2, :cond_1

    .line 116
    iget-object p0, p0, Lcom/google/android/systemui/assist/OpaEnabledReceiver;->mFgExecutor:Ljava/util/concurrent/Executor;

    new-instance p1, Lcom/google/android/systemui/assist/OpaEnabledReceiver-$$ExternalSyntheticLambda0;

    invoke-direct {p1, p2}, Lcom/google/android/systemui/assist/OpaEnabledReceiver-$$ExternalSyntheticLambda0;-><init>(Landroid/content/BroadcastReceiver$PendingResult;)V

    invoke-interface {p0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method private registerContentObserver()V
    .locals 4

    .line 142
    iget-object v0, p0, Lcom/google/android/systemui/assist/OpaEnabledReceiver;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "assistant"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object p0, p0, Lcom/google/android/systemui/assist/OpaEnabledReceiver;->mContentObserver:Landroid/database/ContentObserver;

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method private registerEnabledReceiver(I)V
    .locals 5

    .line 152
    iget-object v0, p0, Lcom/google/android/systemui/assist/OpaEnabledReceiver;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v1, p0, Lcom/google/android/systemui/assist/OpaEnabledReceiver;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.google.android.systemui.OPA_ENABLED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/android/systemui/assist/OpaEnabledReceiver;->mBgExecutor:Ljava/util/concurrent/Executor;

    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;)V

    .line 154
    iget-object v0, p0, Lcom/google/android/systemui/assist/OpaEnabledReceiver;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v1, p0, Lcom/google/android/systemui/assist/OpaEnabledReceiver;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.google.android.systemui.OPA_USER_ENABLED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/google/android/systemui/assist/OpaEnabledReceiver;->mBgExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v1, v2, p0, v3}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;)V

    return-void
.end method

.method private updateOpaEnabledState(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 100
    invoke-direct {p0, p1, v0}, Lcom/google/android/systemui/assist/OpaEnabledReceiver;->updateOpaEnabledState(ZLandroid/content/BroadcastReceiver$PendingResult;)V

    return-void
.end method

.method private updateOpaEnabledState(ZLandroid/content/BroadcastReceiver$PendingResult;)V
    .locals 2

    .line 105
    iget-object v0, p0, Lcom/google/android/systemui/assist/OpaEnabledReceiver;->mBgExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/systemui/assist/OpaEnabledReceiver-$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/systemui/assist/OpaEnabledReceiver-$$ExternalSyntheticLambda2;-><init>(Lcom/google/android/systemui/assist/OpaEnabledReceiver;ZLandroid/content/BroadcastReceiver$PendingResult;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public addOpaEnabledListener(Lcom/google/android/systemui/assist/OpaEnabledListener;)V
    .locals 3

    .line 74
    iget-object v0, p0, Lcom/google/android/systemui/assist/OpaEnabledReceiver;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    iget-object v0, p0, Lcom/google/android/systemui/assist/OpaEnabledReceiver;->mContext:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/google/android/systemui/assist/OpaEnabledReceiver;->mIsOpaEligible:Z

    iget-boolean v2, p0, Lcom/google/android/systemui/assist/OpaEnabledReceiver;->mIsAGSAAssistant:Z

    iget-boolean p0, p0, Lcom/google/android/systemui/assist/OpaEnabledReceiver;->mIsOpaEnabled:Z

    invoke-interface {p1, v0, v1, v2, p0}, Lcom/google/android/systemui/assist/OpaEnabledListener;->onOpaEnabledReceived(Landroid/content/Context;ZZZ)V

    return-void
.end method

.method public dispatchOpaEnabledState()V
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/google/android/systemui/assist/OpaEnabledReceiver;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/google/android/systemui/assist/OpaEnabledReceiver;->dispatchOpaEnabledState(Landroid/content/Context;)V

    return-void
.end method

.method getBroadcastReceiver()Landroid/content/BroadcastReceiver;
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 198
    iget-object p0, p0, Lcom/google/android/systemui/assist/OpaEnabledReceiver;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-object p0
.end method

.method public onUserSwitching(I)V
    .locals 2

    const/4 v0, 0x1

    .line 85
    invoke-direct {p0, v0}, Lcom/google/android/systemui/assist/OpaEnabledReceiver;->updateOpaEnabledState(Z)V

    .line 88
    iget-object v0, p0, Lcom/google/android/systemui/assist/OpaEnabledReceiver;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/google/android/systemui/assist/OpaEnabledReceiver;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 89
    invoke-direct {p0}, Lcom/google/android/systemui/assist/OpaEnabledReceiver;->registerContentObserver()V

    .line 92
    iget-object v0, p0, Lcom/google/android/systemui/assist/OpaEnabledReceiver;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v1, p0, Lcom/google/android/systemui/assist/OpaEnabledReceiver;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 93
    invoke-direct {p0, p1}, Lcom/google/android/systemui/assist/OpaEnabledReceiver;->registerEnabledReceiver(I)V

    return-void
.end method
