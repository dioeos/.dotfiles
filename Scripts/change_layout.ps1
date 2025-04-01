param (
    [string]$layoutType
)

switch ($layoutType) {
    "rows" {
        komorebic change-layout rows
        break
    }
    "bsp" {
        komorebic change-layout bsp
        break
    }
}