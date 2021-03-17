.class public final Lcom/google/android/systemui/elmyra/ElmyraContext;
.super Ljava/lang/Object;
.source "ElmyraContext.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/google/android/systemui/elmyra/ElmyraContext;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public isAvailable()Z
    .locals 1

    .line 17
    iget-object p0, p0, Lcom/google/android/systemui/elmyra/ElmyraContext;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android.hardware.sensor.assist"

    .line 18
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
