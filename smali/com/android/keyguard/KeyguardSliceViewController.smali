.class public Lcom/android/keyguard/KeyguardSliceViewController;
.super Lcom/android/systemui/util/ViewController;
.source "KeyguardSliceViewController.java"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/util/ViewController<",
        "Lcom/android/keyguard/KeyguardSliceView;",
        ">;",
        "Lcom/android/systemui/Dumpable;"
    }
.end annotation


# instance fields
.field private final mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field private mClickActions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/view/View;",
            "Landroid/app/PendingIntent;",
            ">;"
        }
    .end annotation
.end field

.field private final mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field mConfigurationListener:Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

.field private mDisplayId:I

.field private final mDumpManager:Lcom/android/systemui/dump/DumpManager;

.field private mKeyguardSliceUri:Landroid/net/Uri;

.field private mLiveData:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Landroidx/slice/Slice;",
            ">;"
        }
    .end annotation
.end field

.field private mLockScreenMode:I

.field mObserver:Landroidx/lifecycle/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/Observer<",
            "Landroidx/slice/Slice;",
            ">;"
        }
    .end annotation
.end field

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mSlice:Landroidx/slice/Slice;

.field mTunable:Lcom/android/systemui/tuner/TunerService$Tunable;

.field private final mTunerService:Lcom/android/systemui/tuner/TunerService;


# direct methods
.method public static synthetic $r8$lambda$ndFpx236MS-8vkLU2wiapo5K4tM(Lcom/android/keyguard/KeyguardSliceViewController;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardSliceViewController;->lambda$new$0(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tFGuFHYvAhZsxLxKMyAo_E0op5o(Landroidx/slice/widget/SliceContent;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/keyguard/KeyguardSliceViewController;->lambda$showSlice$1(Landroidx/slice/widget/SliceContent;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/android/keyguard/KeyguardSliceView;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/tuner/TunerService;Lcom/android/systemui/dump/DumpManager;)V
    .locals 0

    .line 113
    invoke-direct {p0, p1}, Lcom/android/systemui/util/ViewController;-><init>(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 76
    iput p1, p0, Lcom/android/keyguard/KeyguardSliceViewController;->mLockScreenMode:I

    .line 78
    new-instance p1, Lcom/android/keyguard/KeyguardSliceViewController-$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/keyguard/KeyguardSliceViewController-$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/KeyguardSliceViewController;)V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSliceViewController;->mTunable:Lcom/android/systemui/tuner/TunerService$Tunable;

    .line 80
    new-instance p1, Lcom/android/keyguard/KeyguardSliceViewController$1;

    invoke-direct {p1, p0}, Lcom/android/keyguard/KeyguardSliceViewController$1;-><init>(Lcom/android/keyguard/KeyguardSliceViewController;)V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSliceViewController;->mConfigurationListener:Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    .line 88
    new-instance p1, Lcom/android/keyguard/KeyguardSliceViewController$2;

    invoke-direct {p1, p0}, Lcom/android/keyguard/KeyguardSliceViewController$2;-><init>(Lcom/android/keyguard/KeyguardSliceViewController;)V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSliceViewController;->mObserver:Landroidx/lifecycle/Observer;

    .line 96
    new-instance p1, Lcom/android/keyguard/KeyguardSliceViewController$3;

    invoke-direct {p1, p0}, Lcom/android/keyguard/KeyguardSliceViewController$3;-><init>(Lcom/android/keyguard/KeyguardSliceViewController;)V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSliceViewController;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 114
    iput-object p2, p0, Lcom/android/keyguard/KeyguardSliceViewController;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 115
    iput-object p3, p0, Lcom/android/keyguard/KeyguardSliceViewController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 116
    iput-object p4, p0, Lcom/android/keyguard/KeyguardSliceViewController;->mTunerService:Lcom/android/systemui/tuner/TunerService;

    .line 117
    iput-object p5, p0, Lcom/android/keyguard/KeyguardSliceViewController;->mDumpManager:Lcom/android/systemui/dump/DumpManager;

    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/KeyguardSliceViewController;)Landroid/view/View;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$102(Lcom/android/keyguard/KeyguardSliceViewController;Landroidx/slice/Slice;)Landroidx/slice/Slice;
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSliceViewController;->mSlice:Landroidx/slice/Slice;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/keyguard/KeyguardSliceViewController;)Ljava/util/Map;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSliceViewController;->mClickActions:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/keyguard/KeyguardSliceViewController;)Lcom/android/systemui/plugins/ActivityStarter;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSliceViewController;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    return-object p0
.end method

.method private synthetic lambda$new$0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 78
    invoke-virtual {p0, p2}, Lcom/android/keyguard/KeyguardSliceViewController;->setupUri(Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$showSlice$1(Landroidx/slice/widget/SliceContent;)Z
    .locals 1

    .line 233
    invoke-virtual {p0}, Landroidx/slice/widget/SliceContent;->getSliceItem()Landroidx/slice/SliceItem;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/slice/Slice;->getUri()Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "content://com.android.systemui.keyguard/action"

    .line 235
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 246
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mSlice: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/keyguard/KeyguardSliceViewController;->mSlice:Landroidx/slice/Slice;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 247
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mClickActions: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/keyguard/KeyguardSliceViewController;->mClickActions:Ljava/util/Map;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 248
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mLockScreenMode: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/keyguard/KeyguardSliceViewController;->mLockScreenMode:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method protected onViewAttached()V
    .locals 3

    .line 122
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardSliceView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getDisplay()Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 124
    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/KeyguardSliceViewController;->mDisplayId:I

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSliceViewController;->mTunerService:Lcom/android/systemui/tuner/TunerService;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSliceViewController;->mTunable:Lcom/android/systemui/tuner/TunerService$Tunable;

    const-string v2, "keyguard_slice_uri"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    .line 128
    iget v0, p0, Lcom/android/keyguard/KeyguardSliceViewController;->mDisplayId:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSliceViewController;->mLiveData:Landroidx/lifecycle/LiveData;

    if-eqz v0, :cond_1

    .line 129
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSliceViewController;->mObserver:Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->observeForever(Landroidx/lifecycle/Observer;)V

    .line 131
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSliceViewController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSliceViewController;->mConfigurationListener:Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 132
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSliceViewController;->mDumpManager:Lcom/android/systemui/dump/DumpManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KeyguardSliceViewCtrl@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    .line 133
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 132
    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    .line 136
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardSliceView;

    iget p0, p0, Lcom/android/keyguard/KeyguardSliceViewController;->mLockScreenMode:I

    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardSliceView;->updateLockScreenMode(I)V

    return-void
.end method

.method protected onViewDetached()V
    .locals 3

    .line 142
    iget v0, p0, Lcom/android/keyguard/KeyguardSliceViewController;->mDisplayId:I

    if-nez v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSliceViewController;->mLiveData:Landroidx/lifecycle/LiveData;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSliceViewController;->mObserver:Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSliceViewController;->mTunerService:Lcom/android/systemui/tuner/TunerService;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSliceViewController;->mTunable:Lcom/android/systemui/tuner/TunerService$Tunable;

    invoke-virtual {v0, v1}, Lcom/android/systemui/tuner/TunerService;->removeTunable(Lcom/android/systemui/tuner/TunerService$Tunable;)V

    .line 146
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSliceViewController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSliceViewController;->mConfigurationListener:Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    .line 147
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSliceViewController;->mDumpManager:Lcom/android/systemui/dump/DumpManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KeyguardSliceViewCtrl@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    .line 148
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 147
    invoke-virtual {v0, p0}, Lcom/android/systemui/dump/DumpManager;->unregisterDumpable(Ljava/lang/String;)V

    return-void
.end method

.method public refresh()V
    .locals 2

    const-string v0, "KeyguardSliceViewController#refresh"

    .line 193
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSliceViewController;->mKeyguardSliceUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content://com.android.systemui.keyguard/main"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 197
    invoke-static {}, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->getAttachedInstance()Lcom/android/systemui/keyguard/KeyguardSliceProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 199
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSliceViewController;->mKeyguardSliceUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->onBindSlice(Landroid/net/Uri;)Landroidx/slice/Slice;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "KeyguardSliceViewCtrl"

    const-string v1, "Keyguard slice not bound yet?"

    .line 201
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0

    .line 206
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardSliceView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/slice/SliceViewManager;->getInstance(Landroid/content/Context;)Landroidx/slice/SliceViewManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSliceViewController;->mKeyguardSliceUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroidx/slice/SliceViewManager;->bindSlice(Landroid/net/Uri;)Landroidx/slice/Slice;

    move-result-object v0

    .line 208
    :goto_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSliceViewController;->mObserver:Landroidx/lifecycle/Observer;

    invoke-interface {p0, v0}, Landroidx/lifecycle/Observer;->onChanged(Ljava/lang/Object;)V

    .line 209
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public setupUri(Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    const-string p1, "content://com.android.systemui.keyguard/main"

    :cond_0
    const/4 v0, 0x0

    .line 175
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSliceViewController;->mLiveData:Landroidx/lifecycle/LiveData;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->hasActiveObservers()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 177
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSliceViewController;->mLiveData:Landroidx/lifecycle/LiveData;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSliceViewController;->mObserver:Landroidx/lifecycle/Observer;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    .line 180
    :cond_1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSliceViewController;->mKeyguardSliceUri:Landroid/net/Uri;

    .line 181
    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p1, Lcom/android/keyguard/KeyguardSliceView;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSliceViewController;->mKeyguardSliceUri:Landroid/net/Uri;

    invoke-static {p1, v1}, Landroidx/slice/widget/SliceLiveData;->fromUri(Landroid/content/Context;Landroid/net/Uri;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSliceViewController;->mLiveData:Landroidx/lifecycle/LiveData;

    if-eqz v0, :cond_2

    .line 184
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSliceViewController;->mObserver:Landroidx/lifecycle/Observer;

    invoke-virtual {p1, p0}, Landroidx/lifecycle/LiveData;->observeForever(Landroidx/lifecycle/Observer;)V

    :cond_2
    return-void
.end method

.method showSlice(Landroidx/slice/Slice;)V
    .locals 3

    const-string v0, "KeyguardSliceViewController#showSlice"

    .line 220
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 222
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/KeyguardSliceView;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSliceView;->hideSlice()V

    .line 223
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    .line 227
    :cond_0
    new-instance v0, Landroidx/slice/widget/ListContent;

    invoke-direct {v0, p1}, Landroidx/slice/widget/ListContent;-><init>(Landroidx/slice/Slice;)V

    .line 228
    invoke-virtual {v0}, Landroidx/slice/widget/ListContent;->getHeader()Landroidx/slice/widget/RowContent;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 230
    invoke-virtual {p1}, Landroidx/slice/widget/SliceContent;->getSliceItem()Landroidx/slice/SliceItem;

    move-result-object v1

    const-string v2, "list_item"

    invoke-virtual {v1, v2}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 232
    :goto_0
    invoke-virtual {v0}, Landroidx/slice/widget/ListContent;->getRowItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v2, Lcom/android/keyguard/KeyguardSliceViewController-$$ExternalSyntheticLambda1;->INSTANCE:Lcom/android/keyguard/KeyguardSliceViewController-$$ExternalSyntheticLambda1;

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 236
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 239
    iget-object v2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v2, Lcom/android/keyguard/KeyguardSliceView;

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    invoke-virtual {v2, p1, v0}, Lcom/android/keyguard/KeyguardSliceView;->showSlice(Landroidx/slice/widget/RowContent;Ljava/util/List;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSliceViewController;->mClickActions:Ljava/util/Map;

    .line 241
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public updateLockScreenMode(I)V
    .locals 0

    .line 162
    iput p1, p0, Lcom/android/keyguard/KeyguardSliceViewController;->mLockScreenMode:I

    .line 163
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/KeyguardSliceView;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSliceView;->updateLockScreenMode(I)V

    return-void
.end method

.method updatePosition(ILcom/android/systemui/statusbar/notification/stack/AnimationProperties;Z)V
    .locals 1

    .line 216
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/KeyguardSliceView;

    sget-object v0, Lcom/android/systemui/statusbar/notification/AnimatableProperty;->TRANSLATION_X:Lcom/android/systemui/statusbar/notification/AnimatableProperty;

    int-to-float p1, p1

    invoke-static {p0, v0, p1, p2, p3}, Lcom/android/systemui/statusbar/notification/PropertyAnimator;->setProperty(Landroid/view/View;Lcom/android/systemui/statusbar/notification/AnimatableProperty;FLcom/android/systemui/statusbar/notification/stack/AnimationProperties;Z)V

    return-void
.end method

.method updateTopMargin(F)V
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardSliceView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    float-to-int p1, p1

    .line 154
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 155
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/KeyguardSliceView;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
