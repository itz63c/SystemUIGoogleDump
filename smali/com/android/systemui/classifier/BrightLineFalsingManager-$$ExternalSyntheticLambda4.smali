.class public final synthetic Lcom/android/systemui/classifier/BrightLineFalsingManager-$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/systemui/classifier/BrightLineFalsingManager-$$ExternalSyntheticLambda4;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/classifier/BrightLineFalsingManager-$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/android/systemui/classifier/BrightLineFalsingManager-$$ExternalSyntheticLambda4;-><init>()V

    sput-object v0, Lcom/android/systemui/classifier/BrightLineFalsingManager-$$ExternalSyntheticLambda4;->INSTANCE:Lcom/android/systemui/classifier/BrightLineFalsingManager-$$ExternalSyntheticLambda4;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/view/MotionEvent;

    invoke-static {p1}, Lcom/android/systemui/classifier/BrightLineFalsingManager;->$r8$lambda$SQ8zeMtJvLl8D5H1YcX5fdMuIk4(Landroid/view/MotionEvent;)Lcom/android/systemui/classifier/BrightLineFalsingManager$XYDt;

    move-result-object p0

    return-object p0
.end method
