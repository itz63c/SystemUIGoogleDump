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

.field private mContext:Landroid/content/Context;

.field private final mDisplayId:I

.field private mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

.field final mPopupOffsetX:I

.field final mPopupOffsetY:I

.field mShouldShowHint:Z

.field private final mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

.field private mTaskConfig:Landroid/content/res/Configuration;

.field private final mTaskId:I

.field private mTaskListener:Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;

.field final mWindowManager:Lcom/android/wm/shell/sizecompatui/SizeCompatUIWindowManager;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$aKPFMwQ7Zod6RC7efrq5yarlGlg(Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;IILandroid/view/SurfaceControl$Transaction;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->lambda$updateSurfacePosition$0(IILandroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method constructor <init>(Lcom/android/wm/shell/common/SyncTransactionQueue;Landroid/content/Context;Landroid/content/res/Configuration;ILandroid/os/IBinder;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;Lcom/android/wm/shell/common/DisplayLayout;Z)V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    .line 74
    invoke-virtual {p2, p3}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mContext:Landroid/content/Context;

    .line 75
    iput-object p3, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mTaskConfig:Landroid/content/res/Configuration;

    .line 76
    invoke-virtual {p1}, Landroid/content/Context;->getDisplayId()I

    move-result p1

    iput p1, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mDisplayId:I

    .line 77
    iput p4, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mTaskId:I

    .line 78
    iput-object p5, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mActivityToken:Landroid/os/IBinder;

    .line 79
    iput-object p6, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mTaskListener:Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;

    .line 80
    iput-object p7, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    xor-int/lit8 p1, p8, 0x1

    .line 81
    iput-boolean p1, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mShouldShowHint:Z

    .line 82
    new-instance p1, Lcom/android/wm/shell/sizecompatui/SizeCompatUIWindowManager;

    iget-object p2, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2, p3, p0}, Lcom/android/wm/shell/sizecompatui/SizeCompatUIWindowManager;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;)V

    iput-object p1, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mWindowManager:Lcom/android/wm/shell/sizecompatui/SizeCompatUIWindowManager;

    .line 84
    iget-object p1, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mContext:Landroid/content/Context;

    .line 85
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/wm/shell/R$dimen;->size_compat_button_size:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mButtonSize:I

    .line 86
    div-int/lit8 p2, p1, 0x4

    iput p2, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mPopupOffsetX:I

    .line 87
    iput p1, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mPopupOffsetY:I

    return-void
.end method

.method static getGravity(I)I
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const p0, 0x800003

    goto :goto_0

    :cond_0
    const p0, 0x800005

    :goto_0
    or-int/lit8 p0, p0, 0x50

    return p0
.end method

.method private getLayoutDirection()I
    .locals 0

    .line 228
    iget-object p0, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p0

    return p0
.end method

.method private synthetic lambda$updateSurfacePosition$0(IILandroid/view/SurfaceControl$Transaction;)V
    .locals 0

    .line 216
    iget-object p0, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mWindowManager:Lcom/android/wm/shell/sizecompatui/SizeCompatUIWindowManager;

    invoke-virtual {p0}, Lcom/android/wm/shell/sizecompatui/SizeCompatUIWindowManager;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object p0

    int-to-float p1, p1

    int-to-float p2, p2

    invoke-virtual {p3, p0, p1, p2}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    return-void
.end method


# virtual methods
.method attachToParentSurface(Landroid/view/SurfaceControl$Builder;)V
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mTaskListener:Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;

    iget p0, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mTaskId:I

    invoke-interface {v0, p0, p1}, Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;->attachChildSurfaceToTask(ILandroid/view/SurfaceControl$Builder;)V

    return-void
.end method

.method createSizeCompatButton(Z)V
    .locals 0

    if-nez p1, :cond_1

    .line 92
    iget-object p1, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mButton:Lcom/android/wm/shell/sizecompatui/SizeCompatRestartButton;

    if-eqz p1, :cond_0

    goto :goto_0

    .line 96
    :cond_0
    iget-object p1, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mWindowManager:Lcom/android/wm/shell/sizecompatui/SizeCompatUIWindowManager;

    invoke-virtual {p1}, Lcom/android/wm/shell/sizecompatui/SizeCompatUIWindowManager;->createSizeCompatUI()Lcom/android/wm/shell/sizecompatui/SizeCompatRestartButton;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mButton:Lcom/android/wm/shell/sizecompatui/SizeCompatRestartButton;

    .line 97
    invoke-virtual {p0}, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->updateSurfacePosition()V

    :cond_1
    :goto_0
    return-void
.end method

.method getDisplayId()I
    .locals 0

    .line 220
    iget p0, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mDisplayId:I

    return p0
.end method

.method getTaskId()I
    .locals 0

    .line 224
    iget p0, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mTaskId:I

    return p0
.end method

.method getWindowLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 7

    .line 173
    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mButtonSize:I

    const/16 v3, 0x7f6

    const/16 v4, 0x28

    const/4 v5, -0x3

    move-object v0, v6

    move v1, v2

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 178
    invoke-direct {p0}, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->getLayoutDirection()I

    move-result v0

    invoke-static {v0}, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->getGravity(I)I

    move-result v0

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 179
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, v6, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/android/wm/shell/sizecompatui/SizeCompatRestartButton;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getDisplayId()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v6, p0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 181
    iget p0, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const v0, 0x20000040

    or-int/2addr p0, v0

    iput p0, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    return-object v6
.end method

.method onRestartButtonClicked()V
    .locals 1

    .line 192
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object p0, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mActivityToken:Landroid/os/IBinder;

    invoke-virtual {v0, p0}, Landroid/app/ActivityClient;->restartActivityProcessIfVisible(Landroid/os/IBinder;)V

    return-void
.end method

.method release()V
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mButton:Lcom/android/wm/shell/sizecompatui/SizeCompatRestartButton;

    invoke-virtual {v0}, Lcom/android/wm/shell/sizecompatui/SizeCompatRestartButton;->remove()V

    const/4 v0, 0x0

    .line 103
    iput-object v0, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mButton:Lcom/android/wm/shell/sizecompatui/SizeCompatRestartButton;

    .line 104
    iget-object p0, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mWindowManager:Lcom/android/wm/shell/sizecompatui/SizeCompatUIWindowManager;

    invoke-virtual {p0}, Lcom/android/wm/shell/sizecompatui/SizeCompatUIWindowManager;->release()V

    return-void
.end method

.method updateDisplayLayout(Lcom/android/wm/shell/common/DisplayLayout;)V
    .locals 3

    .line 142
    iget-object v0, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    if-ne p1, v0, :cond_0

    return-void

    .line 146
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 147
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 148
    iget-object v2, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    invoke-virtual {v2, v0}, Lcom/android/wm/shell/common/DisplayLayout;->getStableBounds(Landroid/graphics/Rect;)V

    .line 149
    invoke-virtual {p1, v1}, Lcom/android/wm/shell/common/DisplayLayout;->getStableBounds(Landroid/graphics/Rect;)V

    .line 150
    iput-object p1, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    .line 151
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 153
    invoke-virtual {p0}, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->updateSurfacePosition()V

    :cond_1
    return-void
.end method

.method updateImeVisibility(Z)V
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mButton:Lcom/android/wm/shell/sizecompatui/SizeCompatRestartButton;

    if-nez v0, :cond_0

    .line 161
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->createSizeCompatButton(Z)V

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/16 p1, 0x8

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 166
    :goto_0
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eq v0, p1, :cond_2

    .line 167
    iget-object p0, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mButton:Lcom/android/wm/shell/sizecompatui/SizeCompatRestartButton;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/sizecompatui/SizeCompatRestartButton;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method updateSizeCompatInfo(Landroid/content/res/Configuration;Landroid/os/IBinder;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;Z)V
    .locals 2

    .line 110
    iget-object v0, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mTaskConfig:Landroid/content/res/Configuration;

    .line 111
    iget-object v1, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mTaskListener:Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;

    .line 112
    iput-object p1, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mTaskConfig:Landroid/content/res/Configuration;

    .line 113
    iput-object p2, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mActivityToken:Landroid/os/IBinder;

    .line 114
    iput-object p3, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mTaskListener:Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;

    .line 117
    iget-object p2, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mContext:Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mContext:Landroid/content/Context;

    .line 118
    iget-object p2, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mWindowManager:Lcom/android/wm/shell/sizecompatui/SizeCompatUIWindowManager;

    invoke-virtual {p2, p1}, Lcom/android/wm/shell/sizecompatui/SizeCompatUIWindowManager;->setConfiguration(Landroid/content/res/Configuration;)V

    .line 120
    iget-object p2, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mButton:Lcom/android/wm/shell/sizecompatui/SizeCompatRestartButton;

    if-eqz p2, :cond_3

    if-eq v1, p3, :cond_0

    goto :goto_0

    .line 127
    :cond_0
    iget-object p2, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p2}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object p2

    iget-object p3, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 128
    invoke-virtual {p3}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 130
    invoke-virtual {p0}, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->updateSurfacePosition()V

    .line 133
    :cond_1
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p2

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p3

    if-eq p2, p3, :cond_2

    .line 135
    iget-object p2, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mButton:Lcom/android/wm/shell/sizecompatui/SizeCompatRestartButton;

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/android/wm/shell/sizecompatui/SizeCompatRestartButton;->setLayoutDirection(I)V

    .line 136
    invoke-virtual {p0}, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->updateSurfacePosition()V

    :cond_2
    return-void

    .line 122
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->release()V

    .line 123
    invoke-virtual {p0, p4}, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->createSizeCompatButton(Z)V

    return-void
.end method

.method updateSurfacePosition()V
    .locals 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 197
    iget-object v0, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mButton:Lcom/android/wm/shell/sizecompatui/SizeCompatRestartButton;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mWindowManager:Lcom/android/wm/shell/sizecompatui/SizeCompatUIWindowManager;

    invoke-virtual {v0}, Lcom/android/wm/shell/sizecompatui/SizeCompatUIWindowManager;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mButton:Lcom/android/wm/shell/sizecompatui/SizeCompatRestartButton;

    invoke-virtual {v0}, Lcom/android/wm/shell/sizecompatui/SizeCompatRestartButton;->dismissHint()V

    .line 204
    iget-object v0, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mTaskConfig:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 205
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 206
    iget-object v2, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    invoke-virtual {v2, v1}, Lcom/android/wm/shell/common/DisplayLayout;->getStableBounds(Landroid/graphics/Rect;)V

    .line 207
    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 210
    invoke-direct {p0}, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->getLayoutDirection()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 211
    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->left:I

    goto :goto_0

    .line 212
    :cond_1
    iget v2, v1, Landroid/graphics/Rect;->right:I

    iget v3, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mButtonSize:I

    :goto_0
    sub-int/2addr v2, v3

    .line 213
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v0

    iget v0, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mButtonSize:I

    sub-int/2addr v1, v0

    .line 215
    iget-object v0, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    new-instance v3, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout-$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v2, v1}, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout-$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;II)V

    invoke-virtual {v0, v3}, Lcom/android/wm/shell/common/SyncTransactionQueue;->runInSync(Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V

    :cond_2
    :goto_1
    return-void
.end method
