.class public final Lcom/google/android/systemui/columbus/ColumbusContext;
.super Ljava/lang/Object;
.source "ColumbusContext.kt"


# instance fields
.field private final packageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/columbus/ColumbusContext;->packageManager:Landroid/content/pm/PackageManager;

    return-void
.end method

.method private final isHardwareAvailable()Z
    .locals 2

    .line 17
    iget-object v0, p0, Lcom/google/android/systemui/columbus/ColumbusContext;->packageManager:Landroid/content/pm/PackageManager;

    const-string v1, "android.hardware.sensor.accelerometer"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18
    iget-object p0, p0, Lcom/google/android/systemui/columbus/ColumbusContext;->packageManager:Landroid/content/pm/PackageManager;

    const-string v0, "android.hardware.sensor.gyroscope"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public final isAvailable()Z
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/google/android/systemui/columbus/ColumbusContext;->isHardwareAvailable()Z

    move-result p0

    return p0
.end method
