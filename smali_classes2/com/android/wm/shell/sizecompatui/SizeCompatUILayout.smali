.class Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;
.super Ljava/lang/Object;
.source "SizeCompatUILayout.java"


# instance fields
.field private mActivityToken:Landroid/os/IBinder;

.field mButton:Lcom/android/wm/shell/sizecompatui/SizeCompatRestartButton;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field final mButtonSize:I

.field final mButtonWindowManager:Lcom/android/wm/shell/sizecompatui/SizeCompatUIWindowManager;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private final mDisplayId:I

.field private mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

.field mHint:Lcom/android/wm/shell/sizecompatui/SizeCompatHintPopup;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field mHintWindowManager:Lcom/android/wm/shell/sizecompatui/SizeCompatUIWindowManager;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field final mPopupOffsetX:I

.field final mPopupOffsetY:I

.field mShouldShowHint:Z

.field private final mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

.field private mTaskConfig:Landroid/content/res/Configuration;

.field private final mTaskId:I

.field private mTaskListener:Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;


# direct methods
.method public static synthetic $r8$lambda$82L5QyXg6tEDJRkVahFUcZxpBzw(Landroid/view/SurfaceControl;IILandroid/view/SurfaceControl$Transaction;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->lambda$updateSurfacePosition$0(Landroid/view/SurfaceControl;IILandroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method constructor <init>(Lcom/android/wm/shell/common/SyncTransactionQueue;Landroid/content/Context;Landroid/content/res/Configuration;ILandroid/os/IBinder;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;Lcom/android/wm/shell/common/DisplayLayout;Z)V
    .locals 0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    .line 79
    invoke-virtual {p2, p3}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mContext:Landroid/content/Context;

    .line 80
    iput-object p3, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mTaskConfig:Landroid/content/res/Configuration;

    .line 81
    invoke-virtual {p1}, Landroid/content/Context;->getDisplayId()I

    move-result p1

    iput p1, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mDisplayId:I

    .line 82
    iput p4, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mTaskId:I

    .line 83
    iput-object p5, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mActivityToken:Landroid/os/IBinder;

    .line 84
    iput-object p6, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mTaskListener:Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;

    .line 85
    iput-object p7, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    xor-int/lit8 p1, p8, 0x1

    .line 86
    iput-boolean p1, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mShouldShowHint:Z

    .line 87
    new-instance p1, Lcom/android/wm/shell/sizecompatui/SizeCompatUIWindowManager;

    iget-object p2, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2, p3, p0}, Lcom/android/wm/shell/sizecompatui/SizeCompatUIWindowManager;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;)V

    iput-object p1, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mButtonWindowManager:Lcom/android/wm/shell/sizecompatui/SizeCompatUIWindowManager;

    .line 89
    iget-object p1, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mContext:Landroid/content/Context;

    .line 90
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/wm/shell/R$dimen;->size_compat_button_size:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mButtonSize:I

    .line 91
    div-int/lit8 p2, p1, 0x4

    iput p2, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mPopupOffsetX:I

    .line 92
    iput p1, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mPopupOffsetY:I

    return-void
.end method

.method private createSizeCompatHint()V
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mHint:Lcom/android/wm/shell/sizecompatui/SizeCompatHintPopup;

    if-eqz v0, :cond_0

    return-void

    .line 117
    :cond_0
    invoke-virtual {p0}, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->createHintWindowManager()Lcom/android/wm/shell/sizecompatui/SizeCompatUIWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mHintWindowManager:Lcom/android/wm/shell/sizecompatui/SizeCompatUIWindowManager;

    .line 118
    invoke-virtual {v0}, Lcom/android/wm/shell/sizecompatui/SizeCompatUIWindowManager;->createSizeCompatHint()Lcom/android/wm/shell/sizecompatui/SizeCompatHintPopup;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mHint:Lcom/android/wm/shell/sizecompatui/SizeCompatHintPopup;

    .line 119
    invoke-virtual {p0}, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->updateHintSurfacePosition()V

    return-void
.end method

.method private getLayoutDirection()I
    .locals 0

    .line 327
    iget-object p0, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p0

    return p0
.end method

.method private static synthetic lambda$updateSurfacePosition$0(Landroid/view/SurfaceControl;IILandroid/view/SurfaceControl$Transaction;)V
    .locals 0

    int-to-float p1, p1

    int-to-float p2, p2

    .line 311
    invoke-virtual {p3, p0, p1, p2}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    const p1, 0x7fffffff

    .line 314
    invoke-virtual {p3, p0, p1}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    return-void
.end method

.method private updateSurfacePosition(Landroid/view/SurfaceControl;II)V
    .locals 1

    .line 310
    iget-object p0, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    new-instance v0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout$$ExternalSyntheticLambda0;-><init>(Landroid/view/SurfaceControl;II)V

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/common/SyncTransactionQueue;->runInSync(Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V

    return-void
.end method


# virtual methods
.method attachToParentSurface(Landroid/view/SurfaceControl$Builder;)V
    .locals 1

    .line 251
    iget-object v0, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mTaskListener:Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;

    iget p0, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mTaskId:I

    invoke-interface {v0, p0, p1}, Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;->attachChildSurfaceToTask(ILandroid/view/SurfaceControl$Builder;)V

    return-void
.end method

.method createHintWindowManager()Lcom/android/wm/shell/sizecompatui/SizeCompatUIWindowManager;
    .locals 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 124
    new-instance v0, Lcom/android/wm/shell/sizecompatui/SizeCompatUIWindowManager;

    iget-object v1, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mTaskConfig:Landroid/content/res/Configuration;

    invoke-direct {v0, v1, v2, p0}, Lcom/android/wm/shell/sizecompatui/SizeCompatUIWindowManager;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;)V

    return-object v0
.end method

.method createSizeCompatButton(Z)V
    .locals 0

    if-nez p1, :cond_1

    .line 97
    iget-object p1, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mButton:Lcom/android/wm/shell/sizecompatui/SizeCompatRestartButton;

    if-eqz p1, :cond_0

    goto :goto_0

    .line 101
    :cond_0
    iget-object p1, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mButtonWindowManager:Lcom/android/wm/shell/sizecompatui/SizeCompatUIWindowManager;

    invoke-virtual {p1}, Lcom/android/wm/shell/sizecompatui/SizeCompatUIWindowManager;->createSizeCompatButton()Lcom/android/wm/shell/sizecompatui/SizeCompatRestartButton;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mButton:Lcom/android/wm/shell/sizecompatui/SizeCompatRestartButton;

    .line 102
    invoke-virtual {p0}, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->updateButtonSurfacePosition()V

    .line 104
    iget-boolean p1, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mShouldShowHint:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 106
    iput-boolean p1, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mShouldShowHint:Z

    .line 107
    invoke-direct {p0}, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->createSizeCompatHint()V

    :cond_1
    :goto_0
    return-void
.end method

.method dismissHint()V
    .locals 2

    const/4 v0, 0x0

    .line 129
    iput-object v0, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mHint:Lcom/android/wm/shell/sizecompatui/SizeCompatHintPopup;

    .line 130
    iget-object v1, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mHintWindowManager:Lcom/android/wm/shell/sizecompatui/SizeCompatUIWindowManager;

    if-eqz v1, :cond_0

    .line 131
    invoke-virtual {v1}, Lcom/android/wm/shell/sizecompatui/SizeCompatUIWindowManager;->release()V

    .line 132
    iput-object v0, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mHintWindowManager:Lcom/android/wm/shell/sizecompatui/SizeCompatUIWindowManager;

    :cond_0
    return-void
.end method

.method getButtonWindowLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 7

    .line 222
    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mButtonSize:I

    const/16 v3, 0x7f6

    const/16 v4, 0x28

    const/4 v5, -0x3

    move-object v0, v6

    move v1, v2

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 228
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, v6, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/android/wm/shell/sizecompatui/SizeCompatRestartButton;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->getTaskId()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v6, p0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 230
    iget p0, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const v0, 0x20000040

    or-int/2addr p0, v0

    iput p0, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    return-object v6
.end method

.method getDisplayId()I
    .locals 0

    .line 319
    iget p0, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mDisplayId:I

    return p0
.end method

.method getHintWindowLayoutParams(Lcom/android/wm/shell/sizecompatui/SizeCompatHintPopup;)Landroid/view/WindowManager$LayoutParams;
    .locals 7

    .line 236
    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    .line 238
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    const/16 v3, 0x7f6

    const/16 v4, 0x28

    const/4 v5, -0x3

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 242
    new-instance p1, Landroid/os/Binder;

    invoke-direct {p1}, Landroid/os/Binder;-><init>()V

    iput-object p1, v6, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 243
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v0, Lcom/android/wm/shell/sizecompatui/SizeCompatHintPopup;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->getTaskId()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v6, p0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 244
    iget p0, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const p1, 0x20000040

    or-int/2addr p0, p1

    iput p0, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const p0, 0x1030056

    .line 245
    iput p0, v6, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    return-object v6
.end method

.method getTaskId()I
    .locals 0

    .line 323
    iget p0, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mTaskId:I

    return p0
.end method

.method onRestartButtonClicked()V
    .locals 1

    .line 256
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object p0, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mActivityToken:Landroid/os/IBinder;

    invoke-virtual {v0, p0}, Landroid/app/ActivityClient;->restartActivityProcessIfVisible(Landroid/os/IBinder;)V

    return-void
.end method

.method onRestartButtonLongClicked()V
    .locals 0

    .line 261
    invoke-direct {p0}, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->createSizeCompatHint()V

    return-void
.end method

.method release()V
    .locals 1

    .line 138
    invoke-virtual {p0}, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->dismissHint()V

    const/4 v0, 0x0

    .line 139
    iput-object v0, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mButton:Lcom/android/wm/shell/sizecompatui/SizeCompatRestartButton;

    .line 140
    iget-object p0, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mButtonWindowManager:Lcom/android/wm/shell/sizecompatui/SizeCompatUIWindowManager;

    invoke-virtual {p0}, Lcom/android/wm/shell/sizecompatui/SizeCompatUIWindowManager;->release()V

    return-void
.end method

.method updateButtonSurfacePosition()V
    .locals 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 266
    iget-object v0, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mButton:Lcom/android/wm/shell/sizecompatui/SizeCompatRestartButton;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mButtonWindowManager:Lcom/android/wm/shell/sizecompatui/SizeCompatUIWindowManager;

    invoke-virtual {v0}, Lcom/android/wm/shell/sizecompatui/SizeCompatUIWindowManager;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mButtonWindowManager:Lcom/android/wm/shell/sizecompatui/SizeCompatUIWindowManager;

    invoke-virtual {v0}, Lcom/android/wm/shell/sizecompatui/SizeCompatUIWindowManager;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    .line 272
    iget-object v1, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mTaskConfig:Landroid/content/res/Configuration;

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 273
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 274
    iget-object v3, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    invoke-virtual {v3, v2}, Lcom/android/wm/shell/common/DisplayLayout;->getStableBounds(Landroid/graphics/Rect;)V

    .line 275
    invoke-virtual {v2, v1}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 278
    invoke-direct {p0}, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->getLayoutDirection()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 279
    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v4, v1, Landroid/graphics/Rect;->left:I

    goto :goto_0

    .line 280
    :cond_1
    iget v3, v2, Landroid/graphics/Rect;->right:I

    iget v4, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mButtonSize:I

    :goto_0
    sub-int/2addr v3, v4

    .line 281
    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v1

    iget v1, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mButtonSize:I

    sub-int/2addr v2, v1

    .line 283
    invoke-direct {p0, v0, v3, v2}, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->updateSurfacePosition(Landroid/view/SurfaceControl;II)V

    :cond_2
    :goto_1
    return-void
.end method

.method updateDisplayLayout(Lcom/android/wm/shell/common/DisplayLayout;)V
    .locals 3

    .line 186
    iget-object v0, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    if-ne p1, v0, :cond_0

    return-void

    .line 190
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 191
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 192
    iget-object v2, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    invoke-virtual {v2, v0}, Lcom/android/wm/shell/common/DisplayLayout;->getStableBounds(Landroid/graphics/Rect;)V

    .line 193
    invoke-virtual {p1, v1}, Lcom/android/wm/shell/common/DisplayLayout;->getStableBounds(Landroid/graphics/Rect;)V

    .line 194
    iput-object p1, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    .line 195
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 197
    invoke-virtual {p0}, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->updateButtonSurfacePosition()V

    .line 198
    invoke-virtual {p0}, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->updateHintSurfacePosition()V

    :cond_1
    return-void
.end method

.method updateHintSurfacePosition()V
    .locals 5

    .line 287
    iget-object v0, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mHint:Lcom/android/wm/shell/sizecompatui/SizeCompatHintPopup;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mHintWindowManager:Lcom/android/wm/shell/sizecompatui/SizeCompatUIWindowManager;

    if-eqz v0, :cond_2

    .line 288
    invoke-virtual {v0}, Lcom/android/wm/shell/sizecompatui/SizeCompatUIWindowManager;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 291
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mHintWindowManager:Lcom/android/wm/shell/sizecompatui/SizeCompatUIWindowManager;

    invoke-virtual {v0}, Lcom/android/wm/shell/sizecompatui/SizeCompatUIWindowManager;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    .line 294
    iget-object v1, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mTaskConfig:Landroid/content/res/Configuration;

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 295
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 296
    iget-object v3, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    invoke-virtual {v3, v2}, Lcom/android/wm/shell/common/DisplayLayout;->getStableBounds(Landroid/graphics/Rect;)V

    .line 297
    invoke-virtual {v2, v1}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 300
    invoke-direct {p0}, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->getLayoutDirection()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 301
    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v4, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mPopupOffsetX:I

    add-int/2addr v3, v4

    goto :goto_0

    .line 302
    :cond_1
    iget v3, v2, Landroid/graphics/Rect;->right:I

    iget v4, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mPopupOffsetX:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mHint:Lcom/android/wm/shell/sizecompatui/SizeCompatHintPopup;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v3, v4

    .line 303
    :goto_0
    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v1

    iget v1, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mPopupOffsetY:I

    sub-int/2addr v2, v1

    iget-object v1, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mHint:Lcom/android/wm/shell/sizecompatui/SizeCompatHintPopup;

    .line 304
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v2, v1

    .line 306
    invoke-direct {p0, v0, v3, v2}, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->updateSurfacePosition(Landroid/view/SurfaceControl;II)V

    :cond_2
    :goto_1
    return-void
.end method

.method updateImeVisibility(Z)V
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mButton:Lcom/android/wm/shell/sizecompatui/SizeCompatRestartButton;

    if-nez v0, :cond_0

    .line 206
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->createSizeCompatButton(Z)V

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/16 p1, 0x8

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 212
    :goto_0
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eq v0, p1, :cond_2

    .line 213
    iget-object v0, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mButton:Lcom/android/wm/shell/sizecompatui/SizeCompatRestartButton;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 215
    :cond_2
    iget-object v0, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mHint:Lcom/android/wm/shell/sizecompatui/SizeCompatHintPopup;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eq v0, p1, :cond_3

    .line 216
    iget-object p0, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mHint:Lcom/android/wm/shell/sizecompatui/SizeCompatHintPopup;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method updateSizeCompatInfo(Landroid/content/res/Configuration;Landroid/os/IBinder;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;Z)V
    .locals 2

    .line 146
    iget-object v0, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mTaskConfig:Landroid/content/res/Configuration;

    .line 147
    iget-object v1, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mTaskListener:Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;

    .line 148
    iput-object p1, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mTaskConfig:Landroid/content/res/Configuration;

    .line 149
    iput-object p2, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mActivityToken:Landroid/os/IBinder;

    .line 150
    iput-object p3, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mTaskListener:Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;

    .line 153
    iget-object p2, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mContext:Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mContext:Landroid/content/Context;

    .line 154
    iget-object p2, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mButtonWindowManager:Lcom/android/wm/shell/sizecompatui/SizeCompatUIWindowManager;

    invoke-virtual {p2, p1}, Lcom/android/wm/shell/sizecompatui/SizeCompatUIWindowManager;->setConfiguration(Landroid/content/res/Configuration;)V

    .line 155
    iget-object p2, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mHintWindowManager:Lcom/android/wm/shell/sizecompatui/SizeCompatUIWindowManager;

    if-eqz p2, :cond_0

    .line 156
    invoke-virtual {p2, p1}, Lcom/android/wm/shell/sizecompatui/SizeCompatUIWindowManager;->setConfiguration(Landroid/content/res/Configuration;)V

    .line 159
    :cond_0
    iget-object p2, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mButton:Lcom/android/wm/shell/sizecompatui/SizeCompatRestartButton;

    if-eqz p2, :cond_4

    if-eq v1, p3, :cond_1

    goto :goto_0

    .line 166
    :cond_1
    iget-object p2, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p2}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object p2

    iget-object p3, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 167
    invoke-virtual {p3}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 169
    invoke-virtual {p0}, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->updateButtonSurfacePosition()V

    .line 170
    invoke-virtual {p0}, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->updateHintSurfacePosition()V

    .line 173
    :cond_2
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p2

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p3

    if-eq p2, p3, :cond_3

    .line 175
    iget-object p2, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mButton:Lcom/android/wm/shell/sizecompatui/SizeCompatRestartButton;

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/FrameLayout;->setLayoutDirection(I)V

    .line 176
    invoke-virtual {p0}, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->updateButtonSurfacePosition()V

    .line 177
    iget-object p2, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mHint:Lcom/android/wm/shell/sizecompatui/SizeCompatHintPopup;

    if-eqz p2, :cond_3

    .line 178
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->setLayoutDirection(I)V

    .line 179
    invoke-virtual {p0}, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->updateHintSurfacePosition()V

    :cond_3
    return-void

    .line 161
    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->release()V

    .line 162
    invoke-virtual {p0, p4}, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->createSizeCompatButton(Z)V

    return-void
.end method
