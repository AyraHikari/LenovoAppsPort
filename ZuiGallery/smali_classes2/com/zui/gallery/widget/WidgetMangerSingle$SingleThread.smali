.class Lcom/zui/gallery/widget/WidgetMangerSingle$SingleThread;
.super Ljava/lang/Object;
.source "WidgetMangerSingle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/widget/WidgetMangerSingle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingleThread"
.end annotation


# static fields
.field private static mWidgetMangerSingle:Lcom/zui/gallery/widget/WidgetMangerSingle;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 138
    new-instance v0, Lcom/zui/gallery/widget/WidgetMangerSingle;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/zui/gallery/widget/WidgetMangerSingle;-><init>(Lcom/zui/gallery/widget/WidgetMangerSingle$1;)V

    sput-object v0, Lcom/zui/gallery/widget/WidgetMangerSingle$SingleThread;->mWidgetMangerSingle:Lcom/zui/gallery/widget/WidgetMangerSingle;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/zui/gallery/widget/WidgetMangerSingle;
    .locals 1

    .line 137
    sget-object v0, Lcom/zui/gallery/widget/WidgetMangerSingle$SingleThread;->mWidgetMangerSingle:Lcom/zui/gallery/widget/WidgetMangerSingle;

    return-object v0
.end method
