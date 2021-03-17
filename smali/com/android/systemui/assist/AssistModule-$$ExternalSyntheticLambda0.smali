.class public final synthetic Lcom/android/systemui/assist/AssistModule-$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/slice/Clock;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/systemui/assist/AssistModule-$$ExternalSyntheticLambda0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/assist/AssistModule-$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/systemui/assist/AssistModule-$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/android/systemui/assist/AssistModule-$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/systemui/assist/AssistModule-$$ExternalSyntheticLambda0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final currentTimeMillis()J
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    return-wide v0
.end method
