.class public Lcom/android/systemui/flags/FeatureFlagReader;
.super Ljava/lang/Object;
.source "FeatureFlagReader.java"


# instance fields
.field private final mAreFlagsOverrideable:Z

.field private final mCachedFlags:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "*>;"
        }
    .end annotation
.end field

.field private final mResources:Landroid/content/res/Resources;

.field private final mSystemPropertiesHelper:Lcom/android/systemui/flags/SystemPropertiesHelper;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lcom/android/systemui/util/wrapper/BuildInfo;Lcom/android/systemui/flags/SystemPropertiesHelper;)V
    .locals 1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/flags/FeatureFlagReader;->mCachedFlags:Landroid/util/SparseArray;

    .line 66
    iput-object p1, p0, Lcom/android/systemui/flags/FeatureFlagReader;->mResources:Landroid/content/res/Resources;

    .line 67
    iput-object p3, p0, Lcom/android/systemui/flags/FeatureFlagReader;->mSystemPropertiesHelper:Lcom/android/systemui/flags/SystemPropertiesHelper;

    .line 69
    invoke-virtual {p2}, Lcom/android/systemui/util/wrapper/BuildInfo;->isDebuggable()Z

    move-result p2

    if-eqz p2, :cond_0

    sget p2, Lcom/android/systemui/R$bool;->are_flags_overrideable:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/flags/FeatureFlagReader;->mAreFlagsOverrideable:Z

    return-void
.end method
