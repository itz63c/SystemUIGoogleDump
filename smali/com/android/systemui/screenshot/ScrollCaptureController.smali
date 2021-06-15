.class public Lcom/android/systemui/screenshot/ScrollCaptureController;
.super Ljava/lang/Object;
.source "ScrollCaptureController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/screenshot/ScrollCaptureController$LongScreenshot;
    }
.end annotation


# instance fields
.field private final mBgExecutor:Ljava/util/concurrent/Executor;

.field private final mClient:Lcom/android/systemui/screenshot/ScrollCaptureClient;

.field private final mContext:Landroid/content/Context;

.field private final mImageTileSet:Lcom/android/systemui/screenshot/ImageTileSet;

.field private mScrollingUp:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/android/systemui/screenshot/ScrollCaptureClient;Lcom/android/systemui/screenshot/ImageTileSet;)V
    .locals 1

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 54
    iput-boolean v0, p0, Lcom/android/systemui/screenshot/ScrollCaptureController;->mScrollingUp:Z

    .line 137
    iput-object p1, p0, Lcom/android/systemui/screenshot/ScrollCaptureController;->mContext:Landroid/content/Context;

    .line 138
    iput-object p2, p0, Lcom/android/systemui/screenshot/ScrollCaptureController;->mBgExecutor:Ljava/util/concurrent/Executor;

    .line 139
    iput-object p3, p0, Lcom/android/systemui/screenshot/ScrollCaptureController;->mClient:Lcom/android/systemui/screenshot/ScrollCaptureClient;

    .line 140
    iput-object p4, p0, Lcom/android/systemui/screenshot/ScrollCaptureController;->mImageTileSet:Lcom/android/systemui/screenshot/ImageTileSet;

    return-void
.end method


# virtual methods
.method getTargetTopSizeRatio()F
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const p0, 0x3ecccccd    # 0.4f

    return p0
.end method
