.class public Lcom/android/systemui/screenshot/ScrollCaptureClient;
.super Ljava/lang/Object;
.source "ScrollCaptureClient.java"


# static fields
.field static final MATCH_ANY_TASK:I = -0x1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mWindowManagerService:Landroid/view/IWindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 57
    const-class v0, Lcom/android/systemui/screenshot/ScrollCaptureClient;

    invoke-static {v0}, Lcom/android/systemui/screenshot/LogConfig;->logTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/screenshot/ScrollCaptureClient;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/IWindowManager;)V
    .locals 1

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p1

    const-string v0, "context must be associated with a Display!"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 151
    iput-object p2, p0, Lcom/android/systemui/screenshot/ScrollCaptureClient;->mWindowManagerService:Landroid/view/IWindowManager;

    return-void
.end method
