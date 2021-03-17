.class Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData;
.super Ljava/lang/Object;
.source "ScreenshotController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/screenshot/ScreenshotController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SavedImageData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData$ActionTransition;
    }
.end annotation


# instance fields
.field public deleteAction:Landroid/app/Notification$Action;

.field public editTransition:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData$ActionTransition;",
            ">;"
        }
    .end annotation
.end field

.field public shareTransition:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData$ActionTransition;",
            ">;"
        }
    .end annotation
.end field

.field public smartActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/Notification$Action;",
            ">;"
        }
    .end annotation
.end field

.field public uri:Landroid/net/Uri;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 139
    iput-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData;->uri:Landroid/net/Uri;

    .line 140
    iput-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData;->shareTransition:Ljava/util/function/Supplier;

    .line 141
    iput-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData;->editTransition:Ljava/util/function/Supplier;

    .line 142
    iput-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData;->deleteAction:Landroid/app/Notification$Action;

    .line 143
    iput-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData;->smartActions:Ljava/util/List;

    return-void
.end method
