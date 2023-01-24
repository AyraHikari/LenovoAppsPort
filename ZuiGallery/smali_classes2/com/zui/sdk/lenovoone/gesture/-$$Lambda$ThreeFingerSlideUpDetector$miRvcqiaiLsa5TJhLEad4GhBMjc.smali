.class public final synthetic Lcom/zui/sdk/lenovoone/gesture/-$$Lambda$ThreeFingerSlideUpDetector$miRvcqiaiLsa5TJhLEad4GhBMjc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/zui/sdk/lenovoone/gesture/-$$Lambda$ThreeFingerSlideUpDetector$miRvcqiaiLsa5TJhLEad4GhBMjc;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/zui/sdk/lenovoone/gesture/-$$Lambda$ThreeFingerSlideUpDetector$miRvcqiaiLsa5TJhLEad4GhBMjc;

    invoke-direct {v0}, Lcom/zui/sdk/lenovoone/gesture/-$$Lambda$ThreeFingerSlideUpDetector$miRvcqiaiLsa5TJhLEad4GhBMjc;-><init>()V

    sput-object v0, Lcom/zui/sdk/lenovoone/gesture/-$$Lambda$ThreeFingerSlideUpDetector$miRvcqiaiLsa5TJhLEad4GhBMjc;->INSTANCE:Lcom/zui/sdk/lenovoone/gesture/-$$Lambda$ThreeFingerSlideUpDetector$miRvcqiaiLsa5TJhLEad4GhBMjc;

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

    check-cast p1, Lcom/zui/sdk/lenovoone/gesture/ThreeFingerSlideUpDetector$Finger;

    invoke-static {p1}, Lcom/zui/sdk/lenovoone/gesture/ThreeFingerSlideUpDetector;->lambda$checkAllFingerUpTime$1(Lcom/zui/sdk/lenovoone/gesture/ThreeFingerSlideUpDetector$Finger;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method
