.class public final synthetic Lcom/android/systemui/ImageWallpaper$GLEngine-$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Supplier;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/systemui/ImageWallpaper$GLEngine-$$ExternalSyntheticLambda5;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/ImageWallpaper$GLEngine-$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/android/systemui/ImageWallpaper$GLEngine-$$ExternalSyntheticLambda5;-><init>()V

    sput-object v0, Lcom/android/systemui/ImageWallpaper$GLEngine-$$ExternalSyntheticLambda5;->INSTANCE:Lcom/android/systemui/ImageWallpaper$GLEngine-$$ExternalSyntheticLambda5;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method
