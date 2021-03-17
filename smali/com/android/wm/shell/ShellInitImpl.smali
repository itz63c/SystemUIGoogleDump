.class public Lcom/android/wm/shell/ShellInitImpl;
.super Ljava/lang/Object;
.source "ShellInitImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/ShellInitImpl$InitImpl;
    }
.end annotation


# instance fields
.field private final mAppPairsOptional:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/apppairs/AppPairsController;",
            ">;"
        }
    .end annotation
.end field

.field private final mDisplayImeController:Lcom/android/wm/shell/common/DisplayImeController;

.field private final mDragAndDropController:Lcom/android/wm/shell/draganddrop/DragAndDropController;

.field private final mFullscreenTaskListener:Lcom/android/wm/shell/FullscreenTaskListener;

.field private final mImpl:Lcom/android/wm/shell/ShellInitImpl$InitImpl;

.field private final mLegacySplitScreenOptional:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;",
            ">;"
        }
    .end annotation
.end field

.field private final mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field private final mShellTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

.field private final mSplitScreenOptional:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/splitscreen/SplitScreenController;",
            ">;"
        }
    .end annotation
.end field

.field private final mTransitions:Lcom/android/wm/shell/transition/Transitions;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Lcom/android/wm/shell/common/DisplayImeController;Lcom/android/wm/shell/draganddrop/DragAndDropController;Lcom/android/wm/shell/ShellTaskOrganizer;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Lcom/android/wm/shell/FullscreenTaskListener;Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/common/ShellExecutor;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/wm/shell/common/DisplayImeController;",
            "Lcom/android/wm/shell/draganddrop/DragAndDropController;",
            "Lcom/android/wm/shell/ShellTaskOrganizer;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;",
            ">;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/splitscreen/SplitScreenController;",
            ">;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/apppairs/AppPairsController;",
            ">;",
            "Lcom/android/wm/shell/FullscreenTaskListener;",
            "Lcom/android/wm/shell/transition/Transitions;",
            "Lcom/android/wm/shell/common/ShellExecutor;",
            ")V"
        }
    .end annotation

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Lcom/android/wm/shell/ShellInitImpl$InitImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/wm/shell/ShellInitImpl$InitImpl;-><init>(Lcom/android/wm/shell/ShellInitImpl;Lcom/android/wm/shell/ShellInitImpl$1;)V

    iput-object v0, p0, Lcom/android/wm/shell/ShellInitImpl;->mImpl:Lcom/android/wm/shell/ShellInitImpl$InitImpl;

    .line 79
    iput-object p1, p0, Lcom/android/wm/shell/ShellInitImpl;->mDisplayImeController:Lcom/android/wm/shell/common/DisplayImeController;

    .line 80
    iput-object p2, p0, Lcom/android/wm/shell/ShellInitImpl;->mDragAndDropController:Lcom/android/wm/shell/draganddrop/DragAndDropController;

    .line 81
    iput-object p3, p0, Lcom/android/wm/shell/ShellInitImpl;->mShellTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 82
    iput-object p4, p0, Lcom/android/wm/shell/ShellInitImpl;->mLegacySplitScreenOptional:Ljava/util/Optional;

    .line 83
    iput-object p5, p0, Lcom/android/wm/shell/ShellInitImpl;->mSplitScreenOptional:Ljava/util/Optional;

    .line 84
    iput-object p6, p0, Lcom/android/wm/shell/ShellInitImpl;->mAppPairsOptional:Ljava/util/Optional;

    .line 85
    iput-object p7, p0, Lcom/android/wm/shell/ShellInitImpl;->mFullscreenTaskListener:Lcom/android/wm/shell/FullscreenTaskListener;

    .line 86
    iput-object p8, p0, Lcom/android/wm/shell/ShellInitImpl;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    .line 87
    iput-object p9, p0, Lcom/android/wm/shell/ShellInitImpl;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    return-void
.end method

.method static synthetic access$100(Lcom/android/wm/shell/ShellInitImpl;)Lcom/android/wm/shell/common/ShellExecutor;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/android/wm/shell/ShellInitImpl;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/wm/shell/ShellInitImpl;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/android/wm/shell/ShellInitImpl;->init()V

    return-void
.end method

.method public static create(Lcom/android/wm/shell/common/DisplayImeController;Lcom/android/wm/shell/draganddrop/DragAndDropController;Lcom/android/wm/shell/ShellTaskOrganizer;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Lcom/android/wm/shell/FullscreenTaskListener;Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/common/ShellExecutor;)Lcom/android/wm/shell/ShellInit;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/wm/shell/common/DisplayImeController;",
            "Lcom/android/wm/shell/draganddrop/DragAndDropController;",
            "Lcom/android/wm/shell/ShellTaskOrganizer;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;",
            ">;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/splitscreen/SplitScreenController;",
            ">;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/apppairs/AppPairsController;",
            ">;",
            "Lcom/android/wm/shell/FullscreenTaskListener;",
            "Lcom/android/wm/shell/transition/Transitions;",
            "Lcom/android/wm/shell/common/ShellExecutor;",
            ")",
            "Lcom/android/wm/shell/ShellInit;"
        }
    .end annotation

    .line 59
    new-instance v10, Lcom/android/wm/shell/ShellInitImpl;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/android/wm/shell/ShellInitImpl;-><init>(Lcom/android/wm/shell/common/DisplayImeController;Lcom/android/wm/shell/draganddrop/DragAndDropController;Lcom/android/wm/shell/ShellTaskOrganizer;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Lcom/android/wm/shell/FullscreenTaskListener;Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/common/ShellExecutor;)V

    iget-object v0, v10, Lcom/android/wm/shell/ShellInitImpl;->mImpl:Lcom/android/wm/shell/ShellInitImpl$InitImpl;

    return-object v0
.end method

.method private init()V
    .locals 5

    .line 92
    iget-object v0, p0, Lcom/android/wm/shell/ShellInitImpl;->mDisplayImeController:Lcom/android/wm/shell/common/DisplayImeController;

    invoke-virtual {v0}, Lcom/android/wm/shell/common/DisplayImeController;->startMonitorDisplays()V

    .line 94
    iget-object v0, p0, Lcom/android/wm/shell/ShellInitImpl;->mShellTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    iget-object v1, p0, Lcom/android/wm/shell/ShellInitImpl;->mFullscreenTaskListener:Lcom/android/wm/shell/FullscreenTaskListener;

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/4 v4, -0x2

    aput v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/wm/shell/ShellTaskOrganizer;->addListenerForType(Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;[I)V

    .line 97
    iget-object v0, p0, Lcom/android/wm/shell/ShellInitImpl;->mShellTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {v0}, Lcom/android/wm/shell/ShellTaskOrganizer;->registerOrganizer()Ljava/util/List;

    .line 99
    iget-object v0, p0, Lcom/android/wm/shell/ShellInitImpl;->mAppPairsOptional:Ljava/util/Optional;

    sget-object v1, Lcom/android/wm/shell/ShellInitImpl-$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/wm/shell/ShellInitImpl-$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 100
    iget-object v0, p0, Lcom/android/wm/shell/ShellInitImpl;->mSplitScreenOptional:Ljava/util/Optional;

    sget-object v1, Lcom/android/wm/shell/ShellInitImpl-$$ExternalSyntheticLambda1;->INSTANCE:Lcom/android/wm/shell/ShellInitImpl-$$ExternalSyntheticLambda1;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 103
    iget-object v0, p0, Lcom/android/wm/shell/ShellInitImpl;->mDragAndDropController:Lcom/android/wm/shell/draganddrop/DragAndDropController;

    iget-object v1, p0, Lcom/android/wm/shell/ShellInitImpl;->mSplitScreenOptional:Ljava/util/Optional;

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/draganddrop/DragAndDropController;->initialize(Ljava/util/Optional;)V

    .line 105
    sget-boolean v0, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/android/wm/shell/ShellInitImpl;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    iget-object p0, p0, Lcom/android/wm/shell/ShellInitImpl;->mShellTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {v0, p0}, Lcom/android/wm/shell/transition/Transitions;->register(Lcom/android/wm/shell/ShellTaskOrganizer;)V

    :cond_0
    return-void
.end method
