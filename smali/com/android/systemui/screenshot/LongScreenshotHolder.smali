.class public Lcom/android/systemui/screenshot/LongScreenshotHolder;
.super Ljava/lang/Object;
.source "LongScreenshotHolder.java"


# instance fields
.field private final mLongScreenshot:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/android/systemui/screenshot/ScrollCaptureController$LongScreenshot;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/screenshot/LongScreenshotHolder;->mLongScreenshot:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public takeLongScreenshot()Lcom/android/systemui/screenshot/ScrollCaptureController$LongScreenshot;
    .locals 1

    .line 56
    iget-object p0, p0, Lcom/android/systemui/screenshot/LongScreenshotHolder;->mLongScreenshot:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/screenshot/ScrollCaptureController$LongScreenshot;

    return-object p0
.end method
