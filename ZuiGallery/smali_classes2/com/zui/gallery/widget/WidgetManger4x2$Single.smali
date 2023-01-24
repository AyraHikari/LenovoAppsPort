.class Lcom/zui/gallery/widget/WidgetManger4x2$Single;
.super Ljava/lang/Object;
.source "WidgetManger4x2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/widget/WidgetManger4x2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Single"
.end annotation


# static fields
.field private static mWidgetMangerSingle:Lcom/zui/gallery/widget/WidgetManger4x2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 91
    new-instance v0, Lcom/zui/gallery/widget/WidgetManger4x2;

    invoke-direct {v0}, Lcom/zui/gallery/widget/WidgetManger4x2;-><init>()V

    sput-object v0, Lcom/zui/gallery/widget/WidgetManger4x2$Single;->mWidgetMangerSingle:Lcom/zui/gallery/widget/WidgetManger4x2;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/zui/gallery/widget/WidgetManger4x2;
    .locals 1

    .line 90
    sget-object v0, Lcom/zui/gallery/widget/WidgetManger4x2$Single;->mWidgetMangerSingle:Lcom/zui/gallery/widget/WidgetManger4x2;

    return-object v0
.end method
